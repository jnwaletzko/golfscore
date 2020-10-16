# == Schema Information
#
# Table name: hole_scores
#
#  id                  :integer          not null, primary key
#  fairway_hit         :boolean
#  green_in_regulation :boolean          not null
#  notes               :text
#  number_of_putts     :integer          not null
#  strokes             :integer          not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  hole_id             :integer
#
# Indexes
#
#  index_hole_scores_on_hole_id  (hole_id)
#
# Foreign Keys
#
#  hole_id  (hole_id => holes.id)
#
class HoleScore < ApplicationRecord
  belongs_to :hole
  validates :strokes, presence: true, numericality: {
    only_integer: true,
    greater_than: 0,
    less_than_or_equal_to: 20
  }
  validates :number_of_putts, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 20
  }
  validates :fairway_hit, inclusion: {in: [true, false]}
  validates :green_in_regulation, inclusion: {in: [true, false]}
end
