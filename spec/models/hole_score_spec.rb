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
require "rails_helper"

RSpec.describe HoleScore, type: :model do
  it {
    should validate_numericality_of(:strokes)
      .only_integer
      .is_greater_than(0)
      .is_less_than_or_equal_to(20)
  }

  it {
    should validate_numericality_of(:number_of_putts)
      .only_integer
      .is_greater_than_or_equal_to(0)
      .is_less_than_or_equal_to(20)
  }
end
