# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/slimmer/all/slimmer.rbi
#
# slimmer-13.1.0
module Slimmer
  def self.cache; end
end
class Slimmer::Railtie < Rails::Railtie
end
class Slimmer::NoCache
  def fetch(*arg0); end
end
module Slimmer::Processors
end
class Slimmer::TemplateNotFoundException < StandardError
end
class Slimmer::CouldNotRetrieveTemplate < StandardError
end
class Slimmer::GovukRequestId
  def self.value; end
  def self.value=(new_id); end
end
class Slimmer::App
  def call(env); end
  def content_length(rewritten_body); end
  def in_development?; end
  def initialize(app, *args, &block); end
  def logger; end
  def logger=(arg0); end
  def response_can_be_rewritten?(status, headers); end
  def rewrite_response(env, response); end
  def s(body); end
  def skip_slimmer?(env, response); end
  def skip_slimmer_header?(response); end
  def skip_slimmer_param?(env); end
  def strip_slimmer_headers(headers); end
end
class Slimmer::Skin
  def asset_host; end
  def asset_host=(arg0); end
  def context(html, error); end
  def error(template_name, body, rack_env); end
  def ignorable?(error); end
  def initialize(options = nil); end
  def load_template(template_name); end
  def logger; end
  def logger=(arg0); end
  def options; end
  def options=(arg0); end
  def parse_html(html, description_for_error_message); end
  def process(processors, body, template, rack_env); end
  def report_parse_errors_if_strict!(nokogiri_doc, description_for_error_message); end
  def strict; end
  def strict=(arg0); end
  def success(source_request, response, body); end
  def template(template_name); end
  def template_url(template_name); end
end
module Slimmer::Headers
  def set_slimmer_headers(hash); end
end
class Slimmer::Headers::InvalidHeader < RuntimeError
end
module Slimmer::Template
  def self.included(into); end
  def slimmer_template(template_name); end
end
module Slimmer::Template::ClassMethods
  def slimmer_template(template_name); end
end