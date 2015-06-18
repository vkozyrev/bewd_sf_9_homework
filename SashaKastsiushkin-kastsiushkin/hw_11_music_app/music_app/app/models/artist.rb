# == Schema Information
#
# Table name: artists
#
#  id              :integer          not null, primary key
#  name            :string
#  country         :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  record_label_id :string
#

class Artist < ActiveRecord::Base
  validates_presence_of :name, :country
  has_many :songs
  belongs_to :record_label

  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("name like ?", "%#{query}%")
  end
end
