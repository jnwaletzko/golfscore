# typed: false
# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :course do
    name { Faker::Space.nebula }
    url { Faker::Internet.url }
  end
end
