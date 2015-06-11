# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  rating     :integer
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  movie_id   :integer
#

class Review < ActiveRecord::Base
  belongs_to :movie
  validates :rating, :inclusion => { :in => 1..5 }
end
