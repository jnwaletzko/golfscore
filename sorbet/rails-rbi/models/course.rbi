# This is an autogenerated file for dynamic methods in Course
# Please rerun bundle exec rake rails_rbi:models[Course] to regenerate.

# typed: strong
module Course::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module Course::GeneratedAttributeMethods
  sig { returns(ActiveSupport::TimeWithZone) }
  def created_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def created_at=(value); end

  sig { returns(T::Boolean) }
  def created_at?; end

  sig { returns(Integer) }
  def id; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def id=(value); end

  sig { returns(T::Boolean) }
  def id?; end

  sig { returns(String) }
  def name; end

  sig { params(value: T.any(String, Symbol)).void }
  def name=(value); end

  sig { returns(T::Boolean) }
  def name?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def updated_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def updated_at=(value); end

  sig { returns(T::Boolean) }
  def updated_at?; end

  sig { returns(T.nilable(String)) }
  def url; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def url=(value); end

  sig { returns(T::Boolean) }
  def url?; end
end

module Course::GeneratedAssociationMethods
  sig { returns(::Tee::ActiveRecord_Associations_CollectionProxy) }
  def tees; end

  sig { returns(T::Array[Integer]) }
  def tee_ids; end

  sig { params(value: T::Enumerable[::Tee]).void }
  def tees=(value); end
end

module Course::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[Course]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[Course]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[Course]) }
  def find_n(*args); end

  sig { params(id: Integer).returns(T.nilable(Course)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(Course) }
  def find_by_id!(id); end
end

class Course < ApplicationRecord
  include Course::GeneratedAttributeMethods
  include Course::GeneratedAssociationMethods
  extend Course::CustomFinderMethods
  extend Course::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(Course::ActiveRecord_Relation, Course::ActiveRecord_Associations_CollectionProxy, Course::ActiveRecord_AssociationRelation) }
end

module Course::QueryMethodsReturningRelation
  sig { returns(Course::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Course::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_Relation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Course::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: Course::ActiveRecord_Relation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

module Course::QueryMethodsReturningAssociationRelation
  sig { returns(Course::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Course::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(Course::ActiveRecord_AssociationRelation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Course::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: Course::ActiveRecord_AssociationRelation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

class Course::ActiveRecord_Relation < ActiveRecord::Relation
  include Course::ActiveRelation_WhereNot
  include Course::CustomFinderMethods
  include Course::QueryMethodsReturningRelation
  Elem = type_member(fixed: Course)
end

class Course::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include Course::ActiveRelation_WhereNot
  include Course::CustomFinderMethods
  include Course::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Course)
end

class Course::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include Course::CustomFinderMethods
  include Course::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: Course)

  sig { params(records: T.any(Course, T::Array[Course])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(Course, T::Array[Course])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(Course, T::Array[Course])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(Course, T::Array[Course])).returns(T.self_type) }
  def concat(*records); end
end
