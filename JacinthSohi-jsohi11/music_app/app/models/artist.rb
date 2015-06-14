# == Schema Information
#
# Table name: artists
#
#  id           :integer          not null, primary key
#  fname        :string
#  lname        :string
#  bio          :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  artist_image :string
#

class Artist < ActiveRecord::Base
	has_many :songs, dependent: :destroy
	validates_presence_of :fname, :bio
end
