# == Schema Information
#
# Table name: examples
#
#  id         :integer          not null, primary key
#  name       :string
#  active     :boolean
#  age        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ExampleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
