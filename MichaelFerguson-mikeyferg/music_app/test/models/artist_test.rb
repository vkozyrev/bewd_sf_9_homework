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

require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
