# typed: strict
# == Schema Information
#
# Table name: holes
#
#  id                  :integer          not null, primary key
#  fairway_hit         :boolean
#  green_in_regulation :boolean          not null
#  handicap            :integer
#  number              :integer          not null
#  number_of_putts     :integer          not null
#  par                 :integer          not null
#  strokes             :integer          not null
#  yardage             :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  tee_id              :integer
#

class Hole < ApplicationRecord
  belongs_to :tee
  validates :number, presence: true, numericality: {
    only_integer: true,
    greater_than: 0,
    less_than_or_equal_to: 18,
  }
  validates :par, presence: true, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 3,
    less_than_or_equal_to: 5,
  }
  validates :yardage, presence: true, numericality: {
    only_integer: true,
    greater_than: 0,
    less_than: 1000,
  }
  validates :handicap, presence: true, numericality: {
    only_integer: true,
    greater_than: 0,
    less_than_or_equal_to: 18,
  }
  validates :strokes, presence: true, numericality: {
    only_integer: true,
    greater_than: 0,
    less_than_or_equal_to: 20,
  }
  validates :number_of_putts, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 20,
  }
  validates :fairway_hit, inclusion: {in: [true, false]}
  validates :green_in_regulation, inclusion: {in: [true, false]}
end
