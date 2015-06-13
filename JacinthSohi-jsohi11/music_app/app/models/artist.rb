class Artist < ActiveRecord::Base
	validates_presence_of :fname, :bio
	has_many :songs, dependent: :destroy
end
