# == Schema Information
#
# Table name: record_labels
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#

class RecordLabel < ActiveRecord::Base
  has_many :artists
end
