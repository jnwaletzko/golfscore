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

require "rails_helper"

RSpec.describe Hole, type: :model do
  describe "validations" do
    it { should validate_presence_of(:number) }

    it {
      should validate_numericality_of(:number)
        .only_integer
        .is_greater_than(0)
        .is_less_than_or_equal_to(18)
    }

    it {
      should validate_numericality_of(:par)
        .only_integer
        .is_greater_than_or_equal_to(3)
        .is_less_than_or_equal_to(5)
    }

    it {
      should validate_numericality_of(:yardage)
        .only_integer
        .is_greater_than(0)
        .is_less_than(1000)
    }

    it {
      should validate_numericality_of(:handicap)
        .only_integer
        .is_greater_than(0)
        .is_less_than_or_equal_to(18)
    }
  end
end
