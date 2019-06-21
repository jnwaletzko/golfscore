# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/actiontext/all/actiontext.rbi
#
# actiontext-6.0.0.rc1
module ActionText
  def self.railtie_helpers_paths; end
  def self.railtie_namespace; end
  def self.railtie_routes_url_helpers(include_path_helpers = nil); end
  def self.table_name_prefix; end
  def self.use_relative_model_naming?; end
  extend ActiveSupport::Autoload
end
module ActionText::Attachables
  extend ActiveSupport::Autoload
end
module ActionText::Attachments
  extend ActiveSupport::Autoload
end
class ActionText::Engine < Rails::Engine
end
module ActionText::Attribute
  extend ActiveSupport::Concern
end
module ActionText::Attribute::ClassMethods
  def has_rich_text(name); end
end
