class AdvancedSearchResultSetPresenter < ResultSetPresenter
  include AdvancedSearchParams

  def documents
    results.each_with_index.map do |result, index|
      metadata = metadata_presenter_class.new(result.metadata).present
      doc = AdvancedSearchResultPresenter.new(result, metadata).to_hash
      structure_document_content(doc, result, index, results.count)
    end
  end
end
