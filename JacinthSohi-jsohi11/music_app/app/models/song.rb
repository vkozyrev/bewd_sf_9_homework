# == Schema Information
#
# Table name: songs
#
#  id            :integer          not null, primary key
#  title         :string
#  year_released :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  artist_id     :integer
#

class Song < ActiveRecord::Base
	belongs_to :artist
	validates_presence_of :title, :year_released, :song_url

end
