# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/whenever/all/whenever.rbi
#
# whenever-1.0.0
class Numeric
  def method_missing(method, *args, &block); end
  def respond_to?(method, include_private = nil); end
end
module Whenever
  def self.bin_rails?; end
  def self.bundler?; end
  def self.cron(options); end
  def self.path; end
  def self.script_rails?; end
  def self.seconds(number, units); end
end
class Whenever::NumericSeconds
  def day; end
  def days; end
  def hour; end
  def hours; end
  def initialize(number); end
  def minute; end
  def minutes; end
  def month; end
  def months; end
  def number; end
  def second; end
  def seconds; end
  def self.seconds(number, units); end
  def week; end
  def weeks; end
  def year; end
  def years; end
end
class Whenever::JobList
  def combine(entries); end
  def cron_jobs; end
  def cron_jobs_of_time(time, jobs); end
  def env(variable, value); end
  def environment_variables; end
  def every(frequency, options = nil); end
  def generate_cron_output; end
  def initialize(options); end
  def job_type(name, template); end
  def method_missing(name, *args, &block); end
  def pre_set(variable_string = nil); end
  def roles; end
  def self.respond_to?(name, include_private = nil); end
  def set(variable, value); end
end
class Whenever::Job
  def at; end
  def escape_double_quotes(str); end
  def escape_single_quotes(str); end
  def has_role?(role); end
  def initialize(options = nil); end
  def mailto; end
  def output; end
  def process_template(template, options); end
  def roles; end
end
class Whenever::CommandLine
  def comment_base(include_timestamp = nil); end
  def comment_close(include_timestamp = nil); end
  def comment_close_regex; end
  def comment_open(include_timestamp = nil); end
  def comment_open_regex; end
  def default_identifier; end
  def initialize(options = nil); end
  def prepare(contents); end
  def read_crontab; end
  def run; end
  def self.execute(options = nil); end
  def timestamp_regex; end
  def updated_crontab; end
  def whenever_cron; end
  def write_crontab(contents); end
end
module Whenever::Output
end
class Whenever::Output::Cron
  def comma_separated_timing(frequency, max, start = nil); end
  def day_given?; end
  def initialize(time = nil, task = nil, at = nil, options = nil); end
  def output; end
  def parse_as_string; end
  def parse_symbol; end
  def parse_time; end
  def range_or_integer(at, valid_range, name); end
  def self.enumerate(item, detect_cron = nil); end
  def self.output(times, job, options = nil); end
  def task; end
  def task=(arg0); end
  def time; end
  def time=(arg0); end
  def time_in_cron_syntax; end
end
class Whenever::Output::Redirection
  def initialize(output); end
  def redirect_from_hash; end
  def redirect_from_string; end
  def stderr; end
  def stdout; end
  def to_s; end
end
module Whenever::OS
  def self.solaris?; end
end
