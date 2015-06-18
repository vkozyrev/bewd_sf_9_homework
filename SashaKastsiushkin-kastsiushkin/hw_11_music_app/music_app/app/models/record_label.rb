# == Schema Information
#
# Table name: record_labels
#
#  id         :integer          not null, primary key
#  name       :string
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :string
#

class RecordLabel < ActiveRecord::Base
  has_many :artists
  validates_presence_of :name, :image_url
end
