class ResultSetPresenter
  include ERB::Util
  include ActionView::Helpers::NumberHelper

  attr_reader :finder, :document_noun, :results, :total

  delegate :document_noun,
           :filters,
           :keywords,
           :atom_url,
           to: :finder

  def initialize(finder, filter_params, view_context)
    @finder = finder
    @results = finder.results.documents
    @total = finder.results.total
    @filter_params = filter_params
    @view_context = view_context
  end

  def to_hash
    {
      total: number_with_delimiter(total),
      generic_description: generic_description,
      pluralised_document_noun: document_noun.pluralize(total),
      applied_filters: selected_filter_descriptions,
      documents_by_facets: documents_by_facets,
      documents: documents,
      page_count: documents.count,
      finder_name: finder.name,
      any_filters_applied: any_filters_applied?,
      atom_url: atom_url,
      next_and_prev_links: next_and_prev_links,
      sort_options: sort_options,
      display_grouped_results: grouped_display?,
    }
  end

  def grouped_display?
    sorts_by_topic = sort_option.present? && sort_option["key"] == "topic"
    @filter_params[:order] == "topic" || (!@filter_params.has_key?(:order) && sorts_by_topic)
  end

  def any_filters_applied?
    selected_filters.length.positive? || keywords.present?
  end

  def generic_description
    publications = "publication".pluralize(total)
    "#{publications} matched your criteria"
  end

  def selected_filter_descriptions
    selected_filters.map { |filter|
      FacetTagPresenter.new(filter.sentence_fragment, filter.value, finder.slug).present
    }.reject(&:empty?)
  end

  def documents_by_facets
    return [] unless grouped_display?

    # TODO: These could live in a finder definition to make this finder-agnostic grouping.
    default_group_name = "all_businesses"
    primary_facet = :sector_business_area
    primary_facet_group = %W(sector_business_area business_activity)
    default_group = empty_facet_group(default_group_name, "All businesses")
    primary_group = {}
    secondary_group = {}

    documents.select! { |d| d[:document][:metadata].present? }
    sorted_documents = sort_by_promoted_alphabetical(documents)

    # With no facet filtering add all documents to default group
    if facet_filters.values.empty?
      default_group[:documents] = sorted_documents
    else
      sorted_documents.each do |item|
        document_metadata = item[:document][:metadata]
        # If the document is tagged to all primary facet values, add to default group
        # otherwise it will be repeated for every primary facet value group.
        if tagged_to_all?(primary_facet.to_s, document_metadata)
          default_group[:documents] << item
        else
          document_metadata.each do |metadata|
            key = metadata[:id]
            next unless key && facet_filters.has_key?(key.to_sym)

            # FIXME: There's an inconsistency here, an item which isn't tagged to the primary facet
            # but tagged to the activity facet will not appear. In terms of the current metadata this
            # doesn't happen, but as the results are metadata driven it _can_ happen.
            if primary_facet_group.include?(key)
              # Group by value for the primary facet
              (metadata[:labels] & facet_filters.fetch(primary_facet, [])).each do |value|
                populate_group(primary_group, value, facet_label_for(value), item)
              end
            else
              # Group by facet name otherwise
              populate_group(secondary_group, key, metadata[:label], item)
            end
          end
        end
      end
    end

    groups = [compact_and_sort(primary_group), compact_and_sort(secondary_group)].flatten
    groups << default_group unless default_group[:documents].empty?
    update_grouped_results_document_indices(groups)
  end

  def documents
    search_results = results.each_with_index.map do |result, index|
      {
        document: SearchResultPresenter.new(result).to_hash,
        document_index: index + 1
      }
    end

    search_results = sort_by_promoted(search_results) if facet_filters.any?
    search_results
  end

  def user_supplied_date(date_facet_key, date_facet_from_to)
    @filter_params.fetch(date_facet_key, {}).fetch(date_facet_from_to, nil)
  end

  def user_supplied_keywords
    @filter_params.fetch('keywords', '')
  end

  def sort_options
    "<span class='visually-hidden'>sorted by <strong>" + sort_option['name'] + "</strong></span>" if sort_option.present?
  end

private

  attr_reader :view_context

  def populate_group(groups, key, label, item)
    groups[key] = empty_facet_group(key, label) unless groups[key]
    groups[key][:documents] << item
  end

  def next_and_prev_links
    return unless finder.pagination

    current_page = finder.pagination['current_page']
    previous_page = current_page - 1 if current_page > 1
    next_page = current_page + 1 if current_page < finder.pagination['total_pages']
    pages = {}

    pages[:previous_page] = build_page_link("Previous page", previous_page) if previous_page
    pages[:next_page] = build_page_link("Next page", next_page) if next_page

    view_context.render(formats: %w[html], partial: 'govuk_publishing_components/components/previous_and_next_navigation', locals: pages) if pages
  end

  def build_page_link(page_label, page)
    {
      url: [finder.slug, finder.values.merge(page: page).to_query].reject(&:blank?).join("?"),
      title: page_label,
      label: "#{page} of #{finder.pagination['total_pages']}",
    }
  end

  def selected_filters
    (filters + [KeywordFacet.new(keywords)]).select(&:has_filters?)
  end

  def sort_option
    return if finder.sort.blank?

    if @filter_params['order']
      sort_option = finder.sort.detect { |option|
        option['name'].parameterize == @filter_params['order']
      }
    end

    sort_option ||= finder.default_sort_option

    sort_option
  end

  def tagged_to_all?(facet_key, metadata)
    return false unless metadata

    facet = finder.facets.find { |f| f.key == facet_key }
    facet_metadata = metadata.find { |m| m[:id] == facet_key }
    return false unless facet && facet_metadata

    values = facet.allowed_values.map { |v| v['value'] }
    values & facet_metadata[:labels] == values
  end

  def empty_facet_group(key, name)
    { facet_key: key, facet_name: name, documents: [] }
  end

  def facet_label_for(key)
    allowed_values = finder.facets.map(&:allowed_values).flatten
    facet = allowed_values.find { |v| v["value"] == key }
    facet["label"] if facet
  end

  def sort_by_promoted(results)
    results.sort_by { |r| r[:document][:promoted] ? 0 : 1 }
  end

  def sort_by_promoted_alphabetical(search_results)
    sorted_results = search_results.sort_by { |r| r[:document][:title] }
    sort_by_promoted(sorted_results)
  end

  def compact_and_sort(group)
    group = group.reject { |_, v| v[:documents].empty? }
    group.values.sort_by { |g| g[:facet_name] }
  end

  def facet_filters
    @filter_params.symbolize_keys.without(:order, :keywords)
  end

  def update_grouped_results_document_indices(groups)
    group_index = 0
    groups.map do |group|
      group_index += 1
      document_index = 0
      {
        facet_name: group[:facet_name],
        facet_key: group[:facet_key],
        documents: group[:documents].map do |d|
          document_index_label = "#{group_index}.#{document_index += 1}"
          document_index_label << "p" if d[:document][:promoted]
          {
            document_index: document_index_label,
            document: d[:document]
          }
        end
      }
    end
  end
end
