# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/jbuilder/all/jbuilder.rbi
#
# jbuilder-2.10.1

class Jbuilder < ActiveSupport::ProxyObject
  def _blank?(value = nil); end
  def _extract_hash_values(object, attributes); end
  def _extract_method_values(object, attributes); end
  def _is_collection?(object); end
  def _key(key); end
  def _map_collection(collection); end
  def _merge_block(key); end
  def _merge_values(current_value, updates); end
  def _object_respond_to?(object, *methods); end
  def _scope; end
  def _set_value(key, value); end
  def array!(collection = nil, *attributes, &block); end
  def attributes!; end
  def call(object, *attributes, &block); end
  def child!; end
  def extract!(object, *attributes); end
  def ignore_nil!(value = nil); end
  def initialize(options = nil); end
  def key_format!(*args); end
  def merge!(hash_or_array); end
  def method_missing(*args, &block); end
  def nil!; end
  def null!; end
  def self.encode(*args, &block); end
  def self.ignore_nil(value = nil); end
  def self.key_format(*args); end
  def set!(key, value = nil, *args, &block); end
  def target!; end
end
class Jbuilder::Blank
  def ==(other); end
  def empty?; end
end
class Jbuilder::KeyFormatter
  def format(key); end
  def initialize(*args); end
  def initialize_copy(original); end
end
class Jbuilder::NullError < NoMethodError
  def self.build(key); end
end
class Jbuilder::ArrayError < StandardError
  def self.build(key); end
end
class Jbuilder::MergeError < StandardError
  def self.build(current_value, updates); end
end
class JbuilderTemplate < Jbuilder
  def _cache_fragment_for(key, options, &block); end
  def _cache_key(key, options); end
  def _fragment_name_with_digest(key, options); end
  def _is_active_model?(object); end
  def _partial_options?(options); end
  def _read_fragment_cache(key, options = nil); end
  def _render_active_model_partial(object); end
  def _render_explicit_partial(name_or_options, locals = nil); end
  def _render_partial(options); end
  def _render_partial_with_options(options); end
  def _set_inline_partial(name, object, options); end
  def _write_fragment_cache(key, options = nil); end
  def array!(collection = nil, *args); end
  def cache!(key = nil, options = nil); end
  def cache_if!(condition, *args, &block); end
  def cache_root!(key = nil, options = nil); end
  def initialize(context, *args); end
  def partial!(*args); end
  def self.template_lookup_options; end
  def self.template_lookup_options=(arg0); end
  def set!(name, object = nil, *args); end
  def target!; end
end
class JbuilderHandler
  def default_format; end
  def default_format=(obj); end
  def self.call(template, source = nil); end
  def self.default_format; end
  def self.default_format=(obj); end
end
class Jbuilder::Railtie < Rails::Railtie
end
module Jbuilder::DependencyTrackerMethods
  def dependencies; end
  def direct_dependencies; end
  def indirect_dependencies; end
end
class Jbuilder::DependencyTracker < ActionView::DependencyTracker::ERBTracker
  include Jbuilder::DependencyTrackerMethods
end