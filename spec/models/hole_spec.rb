# == Schema Information
#
# Table name: holes
#
#  id                  :integer          not null, primary key
#  number              :integer          not null
#  par                 :integer          not null
#  yardage             :integer
#  handicap            :integer
#  strokes             :integer          not null
#  number_of_putts     :integer          not null
#  green_in_regulation :boolean          not null
#  fairway_hit         :boolean
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'rails_helper'

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
end
