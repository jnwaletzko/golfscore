# typed: false
# == Schema Information
#
# Table name: tees
#
#  id            :integer          not null, primary key
#  color         :string           not null
#  total_yardage :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  course_id     :integer
#
# Indexes
#
#  index_tees_on_course_id  (course_id)
#
# Foreign Keys
#
#  course_id  (course_id => courses.id)
#

require "rails_helper"

RSpec.describe Tee, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
