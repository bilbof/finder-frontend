# typed: strict
GovukPublishingComponents.configure do |c|
  c.component_guide_title = "Finder Frontend Component Guide"
end

if Rails.env.development?
  startup_message = "=> finder-frontend component guide available at: /component-guide"
  color_blue = 36

  # https://stackoverflow.com/questions/1489183/colorized-ruby-output
  puts "\e[#{color_blue}m#{startup_message}\e[0m"
end
