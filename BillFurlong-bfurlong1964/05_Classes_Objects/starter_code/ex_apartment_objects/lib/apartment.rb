require 'pry'
require 'pry-byebug'

class Apartment
  attr_accessor :name, :sqft, :bedrooms, :bathrooms, :renter, :rent

  def initialize(name,sqft,bedrooms,bathrooms)
    @name = name
    @sqft = sqft
    @bathrooms = bathrooms
    @bedrooms = bedrooms
    @renter = nil
    @rent = nil
  end

  def not_occupied?
    if renter == nil
      true
    else
      false
    end
  end


  def to_s
    "Apartment #{name} has #{sqft} sqft with #{bedrooms}
    bedrooms & #{bathrooms} bathrooms"
  end

end

# apartment = Apartment.new("Walden Park", 1500, 2, 2)
# binding.pry
#
# puts apartment.name, apartment.renter
