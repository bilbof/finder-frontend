# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/railties/all/railties.rbi
#
# railties-5.2.3
module Rails
  def self.app_class; end
  def self.app_class=(arg0); end
  def self.application; end
  def self.application=(arg0); end
  def self.backtrace_cleaner; end
  def self.cache; end
  def self.cache=(arg0); end
  def self.configuration; end
  def self.env; end
  def self.env=(environment); end
  def self.gem_version; end
  def self.groups(*groups); end
  def self.initialize!(*args, &block); end
  def self.initialized?(*args, &block); end
  def self.logger; end
  def self.logger=(arg0); end
  def self.public_path; end
  def self.root; end
  def self.version; end
  extend ActiveSupport::Autoload
end
module Rails::Initializable
  def initializers; end
  def run_initializers(group = nil, *args); end
  def self.included(base); end
end
class Rails::Initializable::Initializer
  def after; end
  def before; end
  def belongs_to?(group); end
  def bind(context); end
  def block; end
  def context_class; end
  def initialize(name, context, options, &block); end
  def name; end
  def run(*args); end
end
class Rails::Initializable::Collection < Array
  def +(other); end
  def tsort_each_child(initializer, &block); end
  def tsort_each_node; end
  include TSort
end
module Rails::Initializable::ClassMethods
  def initializer(name, opts = nil, &blk); end
  def initializers; end
  def initializers_chain; end
  def initializers_for(binding); end
end
class Rails::Railtie
  def config; end
  def configure(&block); end
  def each_registered_block(type, &block); end
  def initialize; end
  def railtie_name(*args, &block); end
  def railtie_namespace; end
  def run_console_blocks(app); end
  def run_generators_blocks(app); end
  def run_runner_blocks(app); end
  def run_tasks_blocks(app); end
  def self.abstract_railtie?; end
  def self.config(*args, &block); end
  def self.configure(&block); end
  def self.console(&blk); end
  def self.generate_railtie_name(string); end
  def self.generators(&blk); end
  def self.inherited(base); end
  def self.instance; end
  def self.method_missing(name, *args, &block); end
  def self.new(*arg0); end
  def self.railtie_name(name = nil); end
  def self.rake_tasks(&blk); end
  def self.register_block_for(type, &blk); end
  def self.respond_to_missing?(name, _); end
  def self.runner(&blk); end
  def self.subclasses; end
  extend Rails::Initializable::ClassMethods
  include Rails::Initializable
end
class Rails::Engine < Rails::Railtie
  def _all_autoload_once_paths; end
  def _all_autoload_paths; end
  def _all_load_paths; end
  def app; end
  def build_middleware; end
  def build_request(env); end
  def call(env); end
  def config; end
  def default_middleware_stack; end
  def eager_load!; end
  def endpoint; end
  def engine_name(*args, &block); end
  def env_config; end
  def has_migrations?; end
  def helpers; end
  def helpers_paths; end
  def initialize; end
  def isolated?(*args, &block); end
  def load_config_initializer(initializer); end
  def load_console(app = nil); end
  def load_generators(app = nil); end
  def load_runner(app = nil); end
  def load_seed; end
  def load_tasks(app = nil); end
  def middleware(*args, &block); end
  def paths(*args, &block); end
  def railties; end
  def root(*args, &block); end
  def routes; end
  def routes?; end
  def run_tasks_blocks(*arg0); end
  def self.called_from; end
  def self.called_from=(arg0); end
  def self.eager_load!(*args, &block); end
  def self.endpoint(endpoint = nil); end
  def self.engine_name(name = nil); end
  def self.find(path); end
  def self.find_root(from); end
  def self.find_root_with_flag(flag, root_path, default = nil); end
  def self.inherited(base); end
  def self.isolate_namespace(mod); end
  def self.isolated; end
  def self.isolated=(arg0); end
  def self.isolated?; end
  def with_inline_jobs; end
end
class Rails::Engine::Railties
  def -(others); end
  def _all; end
  def each(*args, &block); end
  def initialize; end
  include Enumerable
end
class Rails::Secrets
  def self.decrypt(data); end
  def self.encrypt(data); end
  def self.encryptor; end
  def self.handle_missing_key; end
  def self.key; end
  def self.key_path; end
  def self.parse(paths, env:); end
  def self.path; end
  def self.preprocess(path); end
  def self.read; end
  def self.read_for_editing(&block); end
  def self.read_key_file; end
  def self.root=(arg0); end
  def self.write(contents); end
  def self.writing(contents); end
end
class Rails::Secrets::MissingKeyError < RuntimeError
  def initialize; end
end
class Rails::Application < Rails::Engine
  def assets; end
  def assets=(arg0); end
  def build_middleware; end
  def build_middleware_stack; end
  def build_request(env); end
  def config; end
  def config=(configuration); end
  def config_for(name, env: nil); end
  def console(&blk); end
  def credentials; end
  def default_middleware_stack; end
  def default_url_options(*args, &block); end
  def default_url_options=(arg); end
  def encrypted(path, key_path: nil, env_key: nil); end
  def env_config; end
  def executor; end
  def generate_development_secret; end
  def generators(&blk); end
  def helpers_paths; end
  def initialize!; end
  def initialize(initial_variable_values = nil, &block); end
  def initialized?; end
  def initializer(name, opts = nil, &block); end
  def initializers; end
  def isolate_namespace(mod); end
  def key_generator; end
  def message_verifier(verifier_name); end
  def migration_railties; end
  def ordered_railties; end
  def railties_initializers(current); end
  def rake_tasks(&block); end
  def reload_routes!; end
  def reloader; end
  def reloaders; end
  def require_environment!; end
  def routes_reloader; end
  def run_console_blocks(app); end
  def run_generators_blocks(app); end
  def run_load_hooks!; end
  def run_runner_blocks(app); end
  def run_tasks_blocks(app); end
  def runner(&blk); end
  def sandbox; end
  def sandbox=(arg0); end
  def sandbox?; end
  def secret_key_base; end
  def secrets; end
  def secrets=(secrets); end
  def self.add_lib_to_load_path!(root); end
  def self.create(initial_variable_values = nil, &block); end
  def self.find_root(from); end
  def self.inherited(base); end
  def self.instance; end
  def self.new(*arg0); end
  def to_app; end
  def validate_secret_key_base(secret_key_base); end
  def watchable_args; end
end
module Rails::VERSION
end
module Rails::Paths
end
class Rails::Paths::Root
  def [](path); end
  def []=(path, value); end
  def add(path, options = nil); end
  def all_paths; end
  def autoload_once; end
  def autoload_paths; end
  def eager_load; end
  def filter_by(&block); end
  def initialize(path); end
  def keys; end
  def load_paths; end
  def path; end
  def path=(arg0); end
  def values; end
  def values_at(*list); end
end
class Rails::Paths::Path
  def <<(path); end
  def absolute_current; end
  def autoload!; end
  def autoload?; end
  def autoload_once!; end
  def autoload_once?; end
  def children; end
  def concat(paths); end
  def each(&block); end
  def eager_load!; end
  def eager_load?; end
  def existent; end
  def existent_directories; end
  def expanded; end
  def extensions; end
  def first; end
  def glob; end
  def glob=(arg0); end
  def initialize(root, current, paths, options = nil); end
  def last; end
  def load_path!; end
  def load_path?; end
  def push(path); end
  def skip_autoload!; end
  def skip_autoload_once!; end
  def skip_eager_load!; end
  def skip_load_path!; end
  def to_a; end
  def to_ary; end
  def unshift(*paths); end
  include Enumerable
end
module Rails::Rack
end
module Rails::Configuration
end
class Rails::Configuration::MiddlewareStackProxy
  def +(other); end
  def delete(*args, &block); end
  def delete_operations; end
  def initialize(operations = nil, delete_operations = nil); end
  def insert(*args, &block); end
  def insert_after(*args, &block); end
  def insert_before(*args, &block); end
  def merge_into(other); end
  def operations; end
  def swap(*args, &block); end
  def unshift(*args, &block); end
  def use(*args, &block); end
end
class Rails::Configuration::Generators
  def aliases; end
  def aliases=(arg0); end
  def api_only; end
  def api_only=(arg0); end
  def colorize_logging; end
  def colorize_logging=(arg0); end
  def fallbacks; end
  def fallbacks=(arg0); end
  def hidden_namespaces; end
  def hide_namespace(namespace); end
  def initialize; end
  def initialize_copy(source); end
  def method_missing(method, *args); end
  def options; end
  def options=(arg0); end
  def templates; end
  def templates=(arg0); end
end
class Rails::Railtie::Configuration
  def after_initialize(&block); end
  def app_generators; end
  def app_middleware; end
  def before_configuration(&block); end
  def before_eager_load(&block); end
  def before_initialize(&block); end
  def eager_load_namespaces; end
  def initialize; end
  def method_missing(name, *args, &blk); end
  def respond_to?(name, include_private = nil); end
  def self.eager_load_namespaces; end
  def to_prepare(&blk); end
  def to_prepare_blocks; end
  def watchable_dirs; end
  def watchable_files; end
end
class Rails::Engine::Configuration < Rails::Railtie::Configuration
  def autoload_once_paths; end
  def autoload_once_paths=(arg0); end
  def autoload_paths; end
  def autoload_paths=(arg0); end
  def eager_load_paths; end
  def eager_load_paths=(arg0); end
  def generators; end
  def initialize(root = nil); end
  def middleware; end
  def middleware=(arg0); end
  def paths; end
  def root; end
  def root=(value); end
end
class SourceAnnotationExtractor
  def display(results, options = nil); end
  def extract_annotations_from(file, pattern); end
  def find(dirs); end
  def find_in(dir); end
  def initialize(tag); end
  def self.enumerate(tag, options = nil); end
  def tag; end
end
class SourceAnnotationExtractor::Annotation < Struct
  def line; end
  def line=(_); end
  def self.[](*arg0); end
  def self.directories; end
  def self.extensions; end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def self.register_directories(*dirs); end
  def self.register_extensions(*exts, &block); end
  def tag; end
  def tag=(_); end
  def text; end
  def text=(_); end
  def to_s(options = nil); end
end
class Rails::Application::Configuration < Rails::Engine::Configuration
  def allow_concurrency; end
  def allow_concurrency=(arg0); end
  def annotations; end
  def api_only; end
  def api_only=(value); end
  def asset_host; end
  def asset_host=(arg0); end
  def autoflush_log; end
  def autoflush_log=(arg0); end
  def beginning_of_week; end
  def beginning_of_week=(arg0); end
  def cache_classes; end
  def cache_classes=(arg0); end
  def cache_store; end
  def cache_store=(arg0); end
  def colorize_logging; end
  def colorize_logging=(val); end
  def consider_all_requests_local; end
  def consider_all_requests_local=(arg0); end
  def console; end
  def console=(arg0); end
  def content_security_policy(&block); end
  def content_security_policy_nonce_generator; end
  def content_security_policy_nonce_generator=(arg0); end
  def content_security_policy_report_only; end
  def content_security_policy_report_only=(arg0); end
  def database_configuration; end
  def debug_exception_response_format; end
  def debug_exception_response_format=(value); end
  def eager_load; end
  def eager_load=(arg0); end
  def enable_dependency_loading; end
  def enable_dependency_loading=(arg0); end
  def encoding; end
  def encoding=(value); end
  def exceptions_app; end
  def exceptions_app=(arg0); end
  def file_watcher; end
  def file_watcher=(arg0); end
  def filter_parameters; end
  def filter_parameters=(arg0); end
  def filter_redirect; end
  def filter_redirect=(arg0); end
  def force_ssl; end
  def force_ssl=(arg0); end
  def helpers_paths; end
  def helpers_paths=(arg0); end
  def initialize(*arg0); end
  def load_defaults(target_version); end
  def loaded_config_version; end
  def log_formatter; end
  def log_formatter=(arg0); end
  def log_level; end
  def log_level=(arg0); end
  def log_tags; end
  def log_tags=(arg0); end
  def logger; end
  def logger=(arg0); end
  def paths; end
  def public_file_server; end
  def public_file_server=(arg0); end
  def railties_order; end
  def railties_order=(arg0); end
  def read_encrypted_secrets; end
  def read_encrypted_secrets=(arg0); end
  def relative_url_root; end
  def relative_url_root=(arg0); end
  def reload_classes_only_on_change; end
  def reload_classes_only_on_change=(arg0); end
  def require_master_key; end
  def require_master_key=(arg0); end
  def secret_key_base; end
  def secret_key_base=(arg0); end
  def secret_token; end
  def secret_token=(arg0); end
  def session_options; end
  def session_options=(arg0); end
  def session_store(new_session_store = nil, **options); end
  def session_store?; end
  def ssl_options; end
  def ssl_options=(arg0); end
  def time_zone; end
  def time_zone=(arg0); end
  def x; end
  def x=(arg0); end
end
class Rails::Application::Configuration::Custom
  def initialize; end
  def method_missing(method, *args); end
  def respond_to_missing?(symbol, *arg1); end
end
module Rails::Application::Bootstrap
  extend Rails::Initializable::ClassMethods
  include Rails::Initializable
end
module Rails::Application::Finisher
  extend Rails::Initializable::ClassMethods
  include Rails::Initializable
end
class Rails::Application::Finisher::MutexHook
  def complete(_state); end
  def initialize(mutex = nil); end
  def run; end
end
module Rails::Application::Finisher::InterlockHook
  def self.complete(_state); end
  def self.run; end
end
class Rails::Application::RoutesReloader
  def clear!; end
  def eager_load; end
  def eager_load=(arg0); end
  def execute(*args, &block); end
  def execute_if_updated(*args, &block); end
  def finalize!; end
  def initialize; end
  def load_paths; end
  def paths; end
  def reload!; end
  def revert; end
  def route_sets; end
  def updated?(*args, &block); end
  def updater; end
end
class Rails::Application::DefaultMiddlewareStack
  def app; end
  def build_stack; end
  def config; end
  def initialize(app, config, paths); end
  def load_rack_cache; end
  def paths; end
  def show_exceptions_app; end
end
class Rails::Rack::Logger < ActiveSupport::LogSubscriber
end
