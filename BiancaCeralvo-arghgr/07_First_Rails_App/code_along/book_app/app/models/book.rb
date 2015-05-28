# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string
#  author     :string
#  book_url   :string
#  price      :integer
#  seller_url :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ActiveRecord::Base
end
