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

FactoryBot.define do
  factory :hole do
    number { Faker::Number.between(from: 1, to: 18) }
    par { Faker::Number.between(from: 3, to: 5) }
    yardage { Faker::Number.number(digits: 3) }
    handicap { Faker::Number.between(from: 1, to: 18) }
    strokes { Faker::Number.between(from: 1, to: 14) }
    number_of_putts { Faker::Number.between(from: 0, to: 5) }
    green_in_regulation { Faker::Boolean.boolean }
    fairway_hit { Faker::Boolean.boolean }
  end
end
