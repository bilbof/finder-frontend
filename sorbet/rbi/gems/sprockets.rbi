# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/sprockets/all/sprockets.rbi
#
# sprockets-3.7.2
module Sprockets
  extend Sprockets::Configuration
  extend Sprockets::ProcessorUtils
end
module Sprockets::DigestUtils
  def detect_digest_class(bytes); end
  def digest(obj); end
  def digest_class; end
  def hexdigest_integrity_uri(hexdigest); end
  def integrity_uri(digest); end
  def pack_base64digest(bin); end
  def pack_hexdigest(bin); end
  def pack_urlsafe_base64digest(bin); end
  def unpack_hexdigest(hex); end
  extend Sprockets::DigestUtils
end
class Sprockets::Cache
  def expand_key(key); end
  def fetch(key); end
  def get(key, local = nil); end
  def get_cache_wrapper(cache); end
  def initialize(cache = nil, logger = nil); end
  def inspect; end
  def peek_key(key); end
  def self.default_logger; end
  def set(key, value, local = nil); end
end
class Anonymous_Struct_6 < Struct
  def cache; end
  def cache=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Sprockets::Cache::Wrapper < Anonymous_Struct_6
end
class Sprockets::Cache::GetWrapper < Sprockets::Cache::Wrapper
  def get(key); end
  def set(key, value); end
end
class Sprockets::Cache::HashWrapper < Sprockets::Cache::Wrapper
  def get(key); end
  def set(key, value); end
end
class Sprockets::Cache::ReadWriteWrapper < Sprockets::Cache::Wrapper
  def get(key); end
  def set(key, value); end
end
class Sprockets::Asset
  def ==(other); end
  def base64digest; end
  def bytesize; end
  def charset; end
  def content_type; end
  def dependencies; end
  def digest; end
  def digest_path; end
  def each; end
  def eql?(other); end
  def etag; end
  def filename; end
  def hash; end
  def hexdigest; end
  def id; end
  def included; end
  def initialize(environment, attributes = nil); end
  def inspect; end
  def integrity; end
  def length; end
  def links; end
  def logical_path; end
  def metadata; end
  def mtime; end
  def pathname; end
  def source; end
  def to_a; end
  def to_hash; end
  def to_s; end
  def uri; end
  def write_to(filename); end
end
module Sprockets::Bower
  def read_bower_main(dirname, filename); end
  def resolve_alternates(load_path, logical_path); end
end
module Sprockets::Utils
  def concat_javascript_sources(buf, source); end
  def dfs(initial); end
  def dfs_paths(path); end
  def duplicable?(obj); end
  def hash_reassoc(hash, *keys, &block); end
  def hash_reassoc1(hash, key); end
  def module_include(base, mod); end
  def normalize_extension(extension); end
  def string_end_with_semicolon?(str); end
  extend Sprockets::Utils
end
module Sprockets::Compressing
  def compressors; end
  def css_compressor; end
  def css_compressor=(compressor); end
  def gzip=(gzip); end
  def gzip?; end
  def js_compressor; end
  def js_compressor=(compressor); end
  def register_compressor(mime_type, sym, klass); end
  def skip_gzip?; end
  include Sprockets::Utils
end
module Sprockets::PathUtils
  def absolute_path?(path); end
  def atomic_write(filename); end
  def directory?(path); end
  def entries(path); end
  def file?(path); end
  def find_upwards(basename, path, root = nil); end
  def match_path_extname(path, extensions); end
  def path_extnames(path); end
  def path_parents(path, root = nil); end
  def paths_split(paths, filename); end
  def relative_path?(path); end
  def split_subpath(path, subpath); end
  def stat(path); end
  def stat_directory(dir); end
  def stat_sorted_tree(dir, &block); end
  def stat_tree(dir, &block); end
  extend Sprockets::PathUtils
end
module Sprockets::PathDigestUtils
  def file_digest(path); end
  def files_digest(paths); end
  def stat_digest(path, stat); end
  include Sprockets::DigestUtils
end
module Sprockets::URIUtils
  def build_asset_uri(path, params = nil); end
  def build_file_digest_uri(path); end
  def encode_uri_query_params(params); end
  def join_file_uri(scheme, host, path, query); end
  def join_uri(scheme, userinfo, host, port, registry, path, opaque, query, fragment); end
  def parse_asset_uri(uri); end
  def parse_file_digest_uri(uri); end
  def parse_uri_query_params(query); end
  def split_file_uri(uri); end
  def split_uri(uri); end
  def valid_asset_uri?(str); end
  extend Sprockets::URIUtils
end
module Sprockets::Dependencies
  def add_dependency(uri); end
  def depend_on(uri); end
  def dependencies; end
  def dependency_resolvers; end
  def register_dependency_resolver(scheme, &block); end
  def resolve_dependency(str); end
  include Sprockets::DigestUtils
end
class Sprockets::LegacyTiltProcessor < Delegator
  def __getobj__; end
  def call(input); end
  def initialize(klass); end
end
module Sprockets::Engines
  def engine_mime_types; end
  def engines; end
  def register_engine(ext, klass, options = nil); end
  include Sprockets::Utils
end
module Sprockets::EncodingUtils
  def base64(str); end
  def charlock_detect(str); end
  def deflate(str); end
  def detect(str); end
  def detect_css(str); end
  def detect_html(str); end
  def detect_unicode(str); end
  def detect_unicode_bom(str); end
  def gzip(str); end
  def scan_css_charset(str); end
  def unmarshaled_deflated(str, window_bits = nil); end
  extend Sprockets::EncodingUtils
end
module Sprockets::HTTPUtils
  def find_best_mime_type_match(q_value_header, available); end
  def find_best_q_match(q_values, available, &matcher); end
  def find_mime_type_matches(q_value_header, available); end
  def find_q_matches(q_values, available, &matcher); end
  def match_mime_type?(value, matcher); end
  def match_mime_type_keys(hash, mime_type); end
  def parse_q_values(values); end
  extend Sprockets::HTTPUtils
end
module Sprockets::Mime
  def compute_extname_map; end
  def extname_map; end
  def mime_exts; end
  def mime_type_charset_detecter(mime_type); end
  def mime_types; end
  def read_file(filename, content_type = nil); end
  def register_mime_type(mime_type, options = nil); end
  include Sprockets::HTTPUtils
end
module Sprockets::Paths
  def append_path(path); end
  def clear_paths; end
  def each_file; end
  def paths; end
  def prepend_path(path); end
  def root; end
  def root=(path); end
  include Sprockets::PathUtils
end
class Sprockets::FileReader
  def self.call(input); end
end
class Sprockets::LegacyProcProcessor < Delegator
  def __getobj__; end
  def call(input); end
  def initialize(name, proc); end
  def name; end
  def to_s; end
end
module Sprockets::ProcessorUtils
  def call_processor(processor, input); end
  def call_processors(processors, input); end
  def compose_processors(*processors); end
  def processor_cache_key(processor); end
  def processors_cache_keys(processors); end
  def valid_processor_metadata_value?(value); end
  def validate_processor_result!(result); end
  extend Sprockets::ProcessorUtils
end
module Sprockets::Processing
  def build_processors_uri(type, file_type, engine_extnames, pipeline); end
  def bundle_processors; end
  def default_processors_for(type, file_type, engine_extnames); end
  def deprecate_legacy_processor_interface(interface); end
  def pipelines; end
  def postprocessors; end
  def preprocessors; end
  def processors; end
  def processors_for(type, file_type, engine_extnames, pipeline); end
  def register_bundle_metadata_reducer(mime_type, key, *args, &block); end
  def register_bundle_processor(*args, &block); end
  def register_config_processor(type, mime_type, klass, proc = nil, &block); end
  def register_pipeline(name, proc = nil, &block); end
  def register_postprocessor(*args, &block); end
  def register_preprocessor(*args, &block); end
  def register_processor(*args, &block); end
  def resolve_processors_cache_key_uri(uri); end
  def self_processors_for(type, file_type, engine_extnames); end
  def unregister_bundle_processor(*args); end
  def unregister_config_processor(type, mime_type, klass); end
  def unregister_postprocessor(*args); end
  def unregister_preprocessor(*args); end
  def unregister_processor(*args); end
  def wrap_processor(klass, proc); end
  include Sprockets::ProcessorUtils
end
module Sprockets::Transformers
  def compose_transformers(transformers, types); end
  def compute_transformers!; end
  def expand_transform_accepts(parsed_accepts); end
  def register_transformer(from, to, proc); end
  def resolve_transform_type(type, accept); end
  def transformers; end
  include Sprockets::HTTPUtils
end
module Sprockets::Configuration
  def computed_config; end
  def computed_config=(arg0); end
  def config; end
  def config=(config); end
  def context_class; end
  def digest_class; end
  def digest_class=(klass); end
  def initialize_configuration(parent); end
  def logger; end
  def logger=(arg0); end
  def version; end
  def version=(version); end
  include Sprockets::Paths
end
class Sprockets::Error < StandardError
end
class Sprockets::ArgumentError < Sprockets::Error
end
class Sprockets::ContentTypeMismatch < Sprockets::Error
end
class Sprockets::NotImplementedError < Sprockets::Error
end
class Sprockets::NotFound < Sprockets::Error
end
class Sprockets::ConversionError < Sprockets::NotFound
end
class Sprockets::FileNotFound < Sprockets::NotFound
end
class Sprockets::FileOutsidePaths < Sprockets::NotFound
end
module Sprockets::PathDependencyUtils
  def entries_with_dependencies(path); end
  def file_digest_dependency_set(path); end
  def stat_directory_with_dependencies(dir); end
  def stat_sorted_tree_with_dependencies(dir); end
  include Sprockets::PathUtils
  include Sprockets::URIUtils
end
module Sprockets::Resolve
  def dirname_matches(dirname, basename); end
  def parse_accept_options(mime_type, types); end
  def parse_path_extnames(path); end
  def path_matches(load_path, logical_name, logical_basename); end
  def resolve!(path, options = nil); end
  def resolve(path, options = nil); end
  def resolve_absolute_path(paths, filename, accept); end
  def resolve_alternates(load_path, logical_name); end
  def resolve_asset_uri(uri); end
  def resolve_logical_path(paths, logical_path, accept); end
  def resolve_relative_path(paths, path, dirname, accept); end
  def resolve_under_paths(paths, logical_name, accepts); end
  include Sprockets::HTTPUtils
end
class Sprockets::URITar
  def absolute_path?; end
  def compress; end
  def compressed_path; end
  def expand; end
  def initialize(uri, env); end
  def path; end
  def root; end
  def scheme; end
end
class Sprockets::UnloadedAsset
  def asset_key; end
  def compressed_path; end
  def dependency_history_key; end
  def digest_key(digest); end
  def file_digest_key(stat); end
  def filename; end
  def initialize(uri, env); end
  def load_file_params; end
  def params; end
  def uri; end
end
module Sprockets::Loader
  def asset_from_cache(key); end
  def fetch_asset_from_dependency_cache(unloaded, limit = nil); end
  def load(uri); end
  def load_from_unloaded(unloaded); end
  def resolve_dependencies(uris); end
  def store_asset(asset, unloaded); end
  include Sprockets::DigestUtils
  include Sprockets::Engines
end
module Sprockets::Server
  def body_only?(env); end
  def cache_headers(env, etag); end
  def call(env); end
  def css_exception_response(exception); end
  def escape_css_content(content); end
  def forbidden_request?(path); end
  def forbidden_response(env); end
  def head_request?(env); end
  def headers(env, asset, length); end
  def javascript_exception_response(exception); end
  def method_not_allowed_response; end
  def not_found_response(env); end
  def not_modified_response(env, etag); end
  def ok_response(asset, env); end
  def path_fingerprint(path); end
  def precondition_failed_response(env); end
end
class Sprockets::Base
  def [](*args); end
  def cache; end
  def cache=(cache); end
  def cache_get(key); end
  def cache_set(key, value); end
  def cached; end
  def compress_from_root(uri); end
  def each_logical_path(*args, &block); end
  def expand_from_root(uri); end
  def file_digest(path); end
  def find_all_linked_assets(path, options = nil); end
  def find_asset(path, options = nil); end
  def index; end
  def inspect; end
  def logical_paths; end
  def matches_filter(filters, logical_path, filename); end
  def normalize_logical_path(path); end
  def resolve(path, options = nil); end
  def resolve_with_compat(path, options = nil); end
  def resolve_without_compat(path, options = nil); end
  def unescape(str); end
  include Sprockets::Bower
  include Sprockets::Configuration
  include Sprockets::PathUtils
  include Sprockets::Resolve
  include Sprockets::Resolve
  include Sprockets::Server
end
class Sprockets::Cache::MemoryStore
  def get(key); end
  def initialize(max_size = nil); end
  def inspect; end
  def set(key, value); end
end
class Sprockets::CachedEnvironment < Sprockets::Base
  def _entries(path); end
  def _load(uri); end
  def _processor_cache_key(processor); end
  def _resolve_dependency(str); end
  def _stat(path); end
  def cached; end
  def config=(config); end
  def entries(path); end
  def index; end
  def initialize(environment); end
  def load(uri); end
  def processor_cache_key(str); end
  def resolve_dependency(str); end
  def stat(path); end
end
class Sprockets::Environment < Sprockets::Base
  def cached; end
  def find_all_linked_assets(*args, &block); end
  def find_asset(*args); end
  def index; end
  def initialize(root = nil); end
  def load(*args); end
end
module Sprockets::ManifestUtils
  def find_directory_manifest(dirname); end
  def generate_manifest_path; end
  extend Sprockets::ManifestUtils
end
class Sprockets::Utils::Gzip
  def can_compress?(mime_types); end
  def cannot_compress?(mime_types); end
  def compress(target); end
  def initialize(asset); end
end
class Sprockets::Manifest
  def assets; end
  def clean(count = nil, age = nil); end
  def clobber; end
  def compile(*args); end
  def dir; end
  def directory; end
  def environment; end
  def filename; end
  def files; end
  def filter_logical_paths(*args); end
  def find(*args); end
  def find_logical_paths(*args); end
  def find_sources(*args); end
  def initialize(*args); end
  def json_decode(obj); end
  def json_encode(obj); end
  def logger; end
  def path; end
  def remove(filename); end
  def save; end
  def self.compile_match_filter(filter); end
  def self.compute_alias_logical_path(path); end
  def self.simple_logical_path?(str); end
  include Sprockets::ManifestUtils
end
class Sprockets::Deprecation
  def _extract_callstack; end
  def behavior; end
  def behavior=(behavior); end
  def callstack; end
  def deprecation_caller_message; end
  def deprecation_message(message = nil); end
  def extract_callstack; end
  def ignored_callstack(path); end
  def initialize(callstack = nil); end
  def self.silence(&block); end
  def warn(message); end
end
class Sprockets::Context
  def __LINE__; end
  def __LINE__=(arg0); end
  def asset_data_uri(path); end
  def asset_path(path, options = nil); end
  def audio_path(path); end
  def content_type; end
  def depend_on(path); end
  def depend_on_asset(path); end
  def environment; end
  def filename; end
  def font_path(path); end
  def image_path(path); end
  def initialize(input); end
  def javascript_path(path); end
  def link_asset(path); end
  def load(uri); end
  def load_path; end
  def logical_path; end
  def metadata; end
  def pathname; end
  def require_asset(path); end
  def resolve(path, options = nil); end
  def resolve_with_compat(path, options = nil); end
  def resolve_without_compat(path, options = nil); end
  def root_path; end
  def stub_asset(path); end
  def stylesheet_path(path); end
  def video_path(path); end
end
class Sprockets::DirectiveProcessor
  def _call(input); end
  def call(input); end
  def compile_header_pattern(comments); end
  def expand_accept_shorthand(accept); end
  def expand_relative_dirname(directive, path); end
  def extract_directives(header); end
  def initialize(options = nil); end
  def link_paths(paths, deps, accept); end
  def load(uri); end
  def process_depend_on_asset_directive(path); end
  def process_depend_on_directive(path); end
  def process_directives(directives); end
  def process_link_directive(path); end
  def process_link_directory_directive(path = nil, accept = nil); end
  def process_link_tree_directive(path = nil, accept = nil); end
  def process_require_directive(path); end
  def process_require_directory_directive(path = nil); end
  def process_require_self_directive; end
  def process_require_tree_directive(path = nil); end
  def process_source(source); end
  def process_stub_directive(path); end
  def require_paths(paths, deps); end
  def resolve(path, options = nil); end
  def resolve_paths(paths, deps, options = nil); end
  def self.call(input); end
  def self.instance; end
end
class Sprockets::Bundle
  def self.call(input); end
  def self.process_bundle_reducers(assets, reducers); end
end
module Sprockets::Autoload
end
class Sprockets::ClosureCompressor
  def cache_key; end
  def call(input); end
  def initialize(options = nil); end
  def self.cache_key; end
  def self.call(input); end
  def self.instance; end
end
class Sprockets::SassCompressor
  def cache_key; end
  def call(input); end
  def initialize(options = nil); end
  def self.cache_key; end
  def self.call(input); end
  def self.instance; end
end
class Sprockets::UglifierCompressor
  def cache_key; end
  def call(input); end
  def initialize(options = nil); end
  def self.cache_key; end
  def self.call(input); end
  def self.instance; end
end
class Sprockets::YUICompressor
  def cache_key; end
  def call(input); end
  def initialize(options = nil); end
  def self.cache_key; end
  def self.call(input); end
  def self.instance; end
end
module Sprockets::CoffeeScriptProcessor
  def self.cache_key; end
  def self.call(input); end
end
module Sprockets::EcoProcessor
  def self.cache_key; end
  def self.call(input); end
end
module Sprockets::EjsProcessor
  def self.cache_key; end
  def self.call(input); end
end
class Sprockets::JstProcessor
  def call(input); end
  def initialize(options = nil); end
  def self.call(input); end
  def self.default_namespace; end
  def self.instance; end
end
class Sprockets::SassProcessor
  def build_cache_store(input, version); end
  def cache_key; end
  def call(input); end
  def initialize(options = nil, &block); end
  def self.cache_key; end
  def self.call(input); end
  def self.instance; end
  def self.syntax; end
end
module Sprockets::SassProcessor::Functions
  def asset_data_url(path); end
  def asset_path(path, options = nil); end
  def asset_url(path, options = nil); end
  def audio_path(path); end
  def audio_url(path); end
  def font_path(path); end
  def font_url(path); end
  def image_path(path); end
  def image_url(path); end
  def javascript_path(path); end
  def javascript_url(path); end
  def sprockets_context; end
  def sprockets_dependencies; end
  def sprockets_environment; end
  def stylesheet_path(path); end
  def stylesheet_url(path); end
  def video_path(path); end
  def video_url(path); end
end
class Sprockets::ScssProcessor < Sprockets::SassProcessor
  def self.syntax; end
end
class Sprockets::ERBProcessor
  def call(input); end
  def initialize(&block); end
  def self.call(input); end
  def self.instance; end
end
class Sprockets::Cache::FileStore
  def compute_size(caches); end
  def find_caches; end
  def gc!; end
  def get(key); end
  def initialize(root, max_size = nil, logger = nil); end
  def inspect; end
  def safe_open(path, &block); end
  def safe_stat(fn); end
  def self.default_logger; end
  def set(key, value); end
  def size; end
end
