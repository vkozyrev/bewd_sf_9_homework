# == Schema Information
#
# Table name: movies
#
#  id            :integer          not null, primary key
#  title         :string
#  date_released :integer
#  description   :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Movie < ActiveRecord::Base
  validates_presence_of :title, :description, :date_released
  has_many :reviews

  def medium_rating
    if reviews.count > 0
      reviews.inject(0) { |result, review| result + review.rating} / reviews.count
    else
      0
    end
  end
end
