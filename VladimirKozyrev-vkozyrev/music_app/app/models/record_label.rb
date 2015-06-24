# == Schema Information
#
# Table name: record_labels
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RecordLabel < ActiveRecord::Base
  validates_presence_of :name
  has_many :artists
  before_destroy :destroy_artists

  private

  def destroy_artists
    self.artists.destroy_all
  end
end
