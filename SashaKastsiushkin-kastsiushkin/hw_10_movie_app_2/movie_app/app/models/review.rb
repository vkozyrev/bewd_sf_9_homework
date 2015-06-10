# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  review     :text
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ActiveRecord::Base
  belongs_to :movie
  validates_presence_of :rating, :review, :movie_id
end
