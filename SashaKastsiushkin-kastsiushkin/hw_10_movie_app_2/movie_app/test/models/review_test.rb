# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  review     :text
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
