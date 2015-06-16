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

require 'test_helper'

class RecordLabelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
