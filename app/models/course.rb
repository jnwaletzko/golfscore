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

class Course < ApplicationRecord
  validates :name, presence: true
  validates :url, format: URI.regexp(%w[http https])
end
