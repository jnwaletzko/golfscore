# typed: strict
# == Schema Information
#
# Table name: holes
#
#  id         :integer          not null, primary key
#  handicap   :integer
#  number     :integer          not null
#  par        :integer          not null
#  yardage    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  tee_id     :integer
#

class Hole < ApplicationRecord
  belongs_to :tee
  has_many :hole_scores
  validates :number, presence: true, numericality: {
    only_integer: true,
    greater_than: 0,
    less_than_or_equal_to: 18
  }
  validates :par, presence: true, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 3,
    less_than_or_equal_to: 5
  }
  validates :yardage, presence: true, numericality: {
    only_integer: true,
    greater_than: 0,
    less_than: 1000
  }
  validates :handicap, presence: true, numericality: {
    only_integer: true,
    greater_than: 0,
    less_than_or_equal_to: 18
  }
end
