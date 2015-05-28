require 'pry'
require 'pry-byebug'

class Apartment
  attr_accessor :name, :sqft, :bedrooms, :bathrooms, :renter, :rent

  def initialize(name,sqft,bedrooms,bathrooms)
    @name = name
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @renter = nil
    @rent = nil
  end

  def to_s #replaces to_s
    "Apartment #{name} \n
    sqft: #{sqft}   bedrooms: #{bedrooms}   bathrooms: #{bathrooms}"
  end

   def not_occupied? #return true if apartment is not rented
    @renter.nil?
  end
end
