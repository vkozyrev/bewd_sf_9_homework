require 'pry'
require 'pry-byebug'

class Apartment
  attr_accessor :name, :sqft, :bedrooms, :bathrooms, :renter, :rent

  def initialize(name,sqft,bedrooms,bathrooms)
  end


  def to_s
    "Apartment #{name} has #{sqft} sqft"
  end

   def is_occupied?
  end
end
