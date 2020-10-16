# typed: false
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

FactoryBot.define do
  factory :hole do
    number { Faker::Number.between(from: 1, to: 18) }
    par { Faker::Number.between(from: 3, to: 5) }
    yardage { Faker::Number.number(digits: 3) }
    handicap { Faker::Number.between(from: 1, to: 18) }
    tee
  end
end
