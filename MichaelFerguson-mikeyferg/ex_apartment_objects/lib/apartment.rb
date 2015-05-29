require 'pry'
require 'pry-byebug'

class Apartment
  attr_accessor :name, :sqft, :bedrooms, :bathrooms, :renter, :rent

  def initialize(name,sqft,bedrooms,bathrooms)
    @name = name
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @rent = nil
    @renter = nil
  end


  def to_s
    "Apartment #{name} has #{sqft} sqft"
  end

   def is_occupied?
     #I do not see this method being used anywhere???
  end
end
