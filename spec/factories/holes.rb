# == Schema Information
#
# Table name: holes
#
#  id                  :integer          not null primary key
#  number              :integer          not null
#  par                 :integer          not null
#  yards               :integer
#  handicap            :integer
#  score               :integer          not null
#  number_of_putts     :integer          not null
#  green_in_regulation :boolean          not null
#  fairway_hit         :boolean
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

FactoryBot.define do
  factory :hole do
    number { Faker::Number.between(1, 18) }
    par { Faker::Number.between(3, 5) }
    yards { Faker::Number.number(3) }
    handicap { Faker::Number.between(1, 18) }
    score { Faker::Number.between(1, 14) }
    number_of_putts { Faker::Number.between(0, 5) }
    green_in_regulation { Faker::Boolean.boolean }
    fairway_hit { Faker::Boolean.boolean }
  end
end
