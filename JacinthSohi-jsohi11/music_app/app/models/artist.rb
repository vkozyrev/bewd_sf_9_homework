class Artist < ActiveRecord::Base
	validates_presence_of :fname, :lname, :bio
	has_many :songs, dependent: :destroy
end
