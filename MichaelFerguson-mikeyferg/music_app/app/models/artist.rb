# == Schema Information
#
# Table name: artists
#
#  id              :integer          not null, primary key
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  record_label_id :string
#  integer         :string
#

class Artist < ActiveRecord::Base
  searchkick
  has_many :songs
  belongs_to :record_label
end
