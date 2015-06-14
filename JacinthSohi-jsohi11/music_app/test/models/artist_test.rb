# == Schema Information
#
# Table name: artists
#
#  id           :integer          not null, primary key
#  fname        :string
#  lname        :string
#  bio          :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  artist_image :string
#

require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
