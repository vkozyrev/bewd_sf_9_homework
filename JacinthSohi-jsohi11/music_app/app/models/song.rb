class Song < ActiveRecord::Base
	validates_presence_of :title, :year_released
	belongs_to :artist
end
