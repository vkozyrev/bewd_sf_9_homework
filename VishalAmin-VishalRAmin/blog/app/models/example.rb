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

class Example < ActiveRecord::Base
end
