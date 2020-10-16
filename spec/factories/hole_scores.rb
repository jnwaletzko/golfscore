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
FactoryBot.define do
  factory :hole_score do
    
  end
end
