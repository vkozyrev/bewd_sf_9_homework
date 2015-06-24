# == Schema Information
#
# Table name: artists
#
#  id              :integer          not null, primary key
#  name            :string
#  record_label_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Artist < ActiveRecord::Base
  validates_presence_of :name, :record_label
  belongs_to :record_label
  has_many :songs

  before_destroy :destroy_songs

  private

  def destroy_songs
    self.songs.destroy_all
  end
end
