# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/logstasher/all/logstasher.rbi
#
# logstasher-1.2.2
module LogStasher
  def add_custom_fields(&block); end
  def add_custom_fields_to_request_context(&block); end
  def add_default_fields_to_payload(payload, request); end
  def add_default_fields_to_request_context(request); end
  def backtrace; end
  def backtrace=(arg0); end
  def build_logstash_event(data, tags); end
  def called_as_console?; end
  def called_as_rake?; end
  def clear_request_context; end
  def configured_to_suppress_app_logs?(config); end
  def controller_monkey_patch; end
  def controller_monkey_patch=(arg0); end
  def debug(message = nil, additional_fields = nil); end
  def default_source; end
  def enabled; end
  def enabled=(arg0); end
  def enabled?; end
  def error(message = nil, additional_fields = nil); end
  def fatal(message = nil, additional_fields = nil); end
  def field_renaming; end
  def field_renaming=(arg0); end
  def has_active_job?; end
  def info(message = nil, additional_fields = nil); end
  def log(severity, message, additional_fields = nil); end
  def log_controller_parameters; end
  def log_controller_parameters=(arg0); end
  def logger; end
  def logger=(arg0); end
  def logger_path; end
  def logger_path=(arg0); end
  def new_logger(path); end
  def process_config(config, yml_config); end
  def remove_existing_log_subscriptions; end
  def request_context; end
  def set_data_for_console; end
  def set_data_for_rake; end
  def setup(config); end
  def setup_before(config); end
  def source; end
  def source=(arg0); end
  def store; end
  def suppress_app_logs(config); end
  def unknown(message = nil, additional_fields = nil); end
  def unsubscribe(component, subscriber); end
  def warn(message = nil, additional_fields = nil); end
  def watch(event, opts = nil, &block); end
  extend LogStasher
end
module LogStasher::CustomFields
  def self.add(*fields); end
  def self.clear; end
  def self.custom_fields; end
  def self.custom_fields=(val); end
end
module LogStasher::CustomFields::LogSubscriber
  def extract_custom_fields(data); end
end
module LogStasher::ActiveSupport
end
class LogStasher::ActiveSupport::LogSubscriber < ActiveSupport::LogSubscriber
  include LogStasher::CustomFields::LogSubscriber
end
class LogStasher::ActiveSupport::MailerLogSubscriber < ActiveSupport::LogSubscriber
end
module LogStasher::ActionView
end
class LogStasher::ActionView::LogSubscriber < ActionView::LogSubscriber
  include LogStasher::CustomFields::LogSubscriber
end
module LogStasher::ActionController
end
module LogStasher::ActionController::Instrumentation
  def add_custom_fields_to_store; end
  def append_info_to_payload(payload); end
  def process_action(*args); end
end
class LogStasher::Railtie < Rails::Railtie
end
