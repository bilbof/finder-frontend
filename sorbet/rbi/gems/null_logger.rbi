# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/null_logger/all/null_logger.rbi
#
# null_logger-0.0.1
module NullLogger
  def self.instance; end
  def self.reset!; end
end
class NullLogger::Logger
  def <<(*args); end
  def add(*args); end
  def close(*args); end
  def datetime_format(*args); end
  def datetime_format=(*args); end
  def debug(*args); end
  def debug?(*args); end
  def error(*args); end
  def error?(*args); end
  def fatal(*args); end
  def fatal?(*args); end
  def formatter(*args); end
  def formatter=(*args); end
  def info(*args); end
  def info?(*args); end
  def level(*args); end
  def level=(*args); end
  def log(*args); end
  def progname(*args); end
  def progname=(*args); end
  def sev_threshold(*args); end
  def sev_threshold=(*args); end
  def unknown(*args); end
  def warn(*args); end
  def warn?(*args); end
end