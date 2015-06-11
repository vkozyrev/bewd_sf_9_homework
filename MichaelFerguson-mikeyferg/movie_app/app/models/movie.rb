# == Schema Information
#
# Table name: movies
#
#  id            :integer          not null, primary key
#  name          :string
#  date_released :integer
#  description   :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Movie < ActiveRecord::Base
  has_many :reviews
  validates :name, :date_released, :description, presence: true
end
