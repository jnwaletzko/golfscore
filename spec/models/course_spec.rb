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

require "rails_helper"

RSpec.describe Course, type: :model do
  it { should validate_presence_of(:name) }
  it { should allow_value(Faker::Internet.url).for(:url) }
  it { should_not allow_value(Faker::FunnyName.name).for(:url) }
end
