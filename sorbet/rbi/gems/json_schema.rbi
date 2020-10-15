# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/json_schema/all/json_schema.rbi
#
# json_schema-0.20.9

module JsonSchema
  def self.configuration; end
  def self.configure; end
  def self.parse!(data); end
  def self.parse(data); end
end
module JsonSchema::Attributes
  def [](name); end
  def copy_from(schema); end
  def initialize_attrs; end
  def self.included(klass); end
end
module JsonSchema::Attributes::ClassMethods
  def attr_copyable(attr, options = nil); end
  def attr_schema(attr, options = nil); end
  def copyable_attrs; end
  def inherit_attrs; end
  def initialize_attrs; end
  def schema_attrs; end
end
class JsonSchema::Configuration
  def all_of_sub_errors; end
  def all_of_sub_errors=(arg0); end
  def custom_formats; end
  def initialize; end
  def register_format(name, validator_proc); end
  def reset!; end
  def validate_regex_with; end
  def validate_regex_with=(validator); end
end
class JsonSchema::DocumentStore
  def add_schema(schema); end
  def each; end
  def initialize; end
  def lookup_schema(uri); end
  include Enumerable
end
class JsonSchema::Error < RuntimeError
end
class JsonSchema::AggregateError < JsonSchema::Error
  def errors; end
  def errors=(arg0); end
  def initialize(errors); end
  def to_s; end
end
class JsonSchema::SchemaError < JsonSchema::Error
  def initialize(schema, message, type); end
  def message; end
  def message=(arg0); end
  def schema; end
  def schema=(arg0); end
  def self.aggregate(errors); end
  def to_s; end
  def type; end
  def type=(arg0); end
end
class JsonSchema::ValidationError < JsonSchema::SchemaError
  def data; end
  def data=(arg0); end
  def initialize(schema, path, message, type, options = nil); end
  def path; end
  def path=(arg0); end
  def pointer; end
  def sub_errors; end
  def sub_errors=(arg0); end
  def to_s; end
end
module JsonSchema::ErrorFormatter
  def self.to_list(list); end
  def to_list(list); end
end
module JsonPointer
  def self.evaluate(data, path); end
end
class JsonPointer::Evaluator
  def evaluate(original_path); end
  def evaluate_segment(data, path_parts); end
  def initialize(data); end
  def split(path); end
  def transform_key(key); end
end
module JsonReference
  def self.reference(ref); end
end
class JsonReference::Reference
  def <=>(other); end
  def initialize(ref); end
  def inspect; end
  def pointer; end
  def pointer=(arg0); end
  def resolve_pointer(data); end
  def to_s; end
  def uri; end
  def uri=(arg0); end
  include Comparable
end
class JsonSchema::Validator
  def errors; end
  def errors=(arg0); end
  def fast_and(valid_old, valid_new); end
  def find_parent(schema); end
  def first_visit(schema, errors, path); end
  def get_extra_keys(schema, data); end
  def initialize(schema); end
  def strict_and(valid_old, valid_new); end
  def validate!(data, fail_fast: nil); end
  def validate(data, fail_fast: nil); end
  def validate_additional_properties(schema, data, errors, path); end
  def validate_all_of(schema, data, errors, path); end
  def validate_any_of(schema, data, errors, path); end
  def validate_data(schema, data, errors, path); end
  def validate_dependencies(schema, data, errors, path); end
  def validate_enum(schema, data, errors, path); end
  def validate_extra(schema, data, errors, path); end
  def validate_format(schema, data, errors, path); end
  def validate_items(schema, data, errors, path); end
  def validate_max(schema, data, errors, path); end
  def validate_max_items(schema, data, errors, path); end
  def validate_max_length(schema, data, errors, path); end
  def validate_max_properties(schema, data, errors, path); end
  def validate_min(schema, data, errors, path); end
  def validate_min_items(schema, data, errors, path); end
  def validate_min_length(schema, data, errors, path); end
  def validate_min_properties(schema, data, errors, path); end
  def validate_multiple_of(schema, data, errors, path); end
  def validate_not(schema, data, errors, path); end
  def validate_one_of(schema, data, errors, path); end
  def validate_pattern(schema, data, errors, path); end
  def validate_pattern_properties(schema, data, errors, path); end
  def validate_properties(schema, data, errors, path); end
  def validate_required(schema, data, errors, path, required); end
  def validate_strict_properties(schema, data, errors, path); end
  def validate_type(schema, data, errors, path); end
  def validate_unique_items(schema, data, errors, path); end
end
class JsonSchema::Parser
  def build_uri(id, parent_uri); end
  def errors; end
  def errors=(arg0); end
  def parse!(data, parent = nil); end
  def parse(data, parent = nil); end
  def parse_additional_items(schema); end
  def parse_additional_properties(schema); end
  def parse_all_of(schema); end
  def parse_any_of(schema); end
  def parse_data(data, parent, fragment); end
  def parse_definitions(schema); end
  def parse_dependencies(schema); end
  def parse_items(schema); end
  def parse_links(schema); end
  def parse_media(schema); end
  def parse_not(schema); end
  def parse_one_of(schema); end
  def parse_pattern_properties(schema); end
  def parse_properties(schema); end
  def parse_regex(schema, regex); end
  def parse_schema(data, parent, fragment); end
  def validate_format(schema, format); end
  def validate_known_type!(schema); end
  def validate_type(schema, types, field); end
end
class JsonSchema::ReferenceExpander
  def add_reference(schema); end
  def build_schema_paths(uri, schema); end
  def dereference(ref_schema, ref_stack, parent_ref: nil); end
  def errors; end
  def errors=(arg0); end
  def expand!(schema, options = nil); end
  def expand(schema, options = nil); end
  def lookup_pointer(uri, pointer); end
  def lookup_reference(uri); end
  def resolve_pointer(ref_schema, resolved_schema); end
  def resolve_reference(ref_schema); end
  def resolve_uri(ref_schema, uri); end
  def schema_children(schema); end
  def store; end
  def store=(arg0); end
  def traverse_schema(schema); end
  def unresolved_refs(schema); end
end
class JsonSchema::Schema
  def additional_items; end
  def additional_items=(arg0); end
  def additional_items?; end
  def additional_properties; end
  def additional_properties=(arg0); end
  def all_of; end
  def all_of=(arg0); end
  def any_of; end
  def any_of=(arg0); end
  def clones; end
  def clones=(arg0); end
  def data; end
  def data=(arg0); end
  def default; end
  def default=(arg0); end
  def definitions; end
  def definitions=(arg0); end
  def dependencies; end
  def dependencies=(arg0); end
  def description; end
  def description=(arg0); end
  def enc_type; end
  def enc_type=(arg0); end
  def enum; end
  def enum=(arg0); end
  def expand_references!(options = nil); end
  def expand_references(options = nil); end
  def expanded; end
  def expanded=(arg0); end
  def expanded?; end
  def format; end
  def format=(arg0); end
  def fragment; end
  def fragment=(arg0); end
  def href; end
  def href=(arg0); end
  def id; end
  def id=(arg0); end
  def initialize; end
  def inspect; end
  def inspect_schema; end
  def inspect_value(value); end
  def items; end
  def items=(arg0); end
  def links; end
  def links=(arg0); end
  def max; end
  def max=(arg0); end
  def max_exclusive; end
  def max_exclusive=(arg0); end
  def max_exclusive?; end
  def max_items; end
  def max_items=(arg0); end
  def max_length; end
  def max_length=(arg0); end
  def max_properties; end
  def max_properties=(arg0); end
  def media; end
  def media=(arg0); end
  def media_type; end
  def media_type=(arg0); end
  def method; end
  def method=(arg0); end
  def min; end
  def min=(arg0); end
  def min_exclusive; end
  def min_exclusive=(arg0); end
  def min_exclusive?; end
  def min_items; end
  def min_items=(arg0); end
  def min_length; end
  def min_length=(arg0); end
  def min_properties; end
  def min_properties=(arg0); end
  def multiple_of; end
  def multiple_of=(arg0); end
  def not; end
  def not=(arg0); end
  def one_of; end
  def one_of=(arg0); end
  def original?; end
  def parent; end
  def parent=(arg0); end
  def path_start; end
  def path_start=(arg0); end
  def pattern; end
  def pattern=(arg0); end
  def pattern_properties; end
  def pattern_properties=(arg0); end
  def pointer; end
  def properties; end
  def properties=(arg0); end
  def read_only; end
  def read_only=(arg0); end
  def read_only?; end
  def reference; end
  def reference=(arg0); end
  def rel; end
  def rel=(arg0); end
  def required; end
  def required=(arg0); end
  def schema; end
  def schema=(arg0); end
  def strict_properties; end
  def strict_properties=(arg0); end
  def target_schema; end
  def target_schema=(arg0); end
  def title; end
  def title=(arg0); end
  def type; end
  def type=(value); end
  def type_parsed; end
  def unique_items; end
  def unique_items=(arg0); end
  def unique_items?; end
  def uri; end
  def uri=(arg0); end
  def validate!(data, fail_fast: nil); end
  def validate(data, fail_fast: nil); end
  extend JsonSchema::Attributes::ClassMethods
  include JsonSchema::Attributes
end
class JsonSchema::Schema::Link < JsonSchema::Schema
end
class JsonSchema::Schema::Media
  def binary_encoding; end
  def binary_encoding=(arg0); end
  def type; end
  def type=(arg0); end
end