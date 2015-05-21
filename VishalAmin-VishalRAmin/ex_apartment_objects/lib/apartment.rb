require 'pry'
require 'pry-byebug'

class Apartment
  attr_accessor :name, :sqft, :bedrooms, :bathrooms, :renter, :rent

  def initialize(name,sqft,bedrooms,bathrooms)
<<<<<<< HEAD
    @name = name
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @renter = nil
    @rent = nil
=======
>>>>>>> fbca0300694c0e191694e6c9f0651a1a0caee6a2
  end


  def to_s
    "Apartment #{name} has #{sqft} sqft"
  end

   def is_occupied?
<<<<<<< HEAD
    @renter != nil
  end
end


=======
  end
end
>>>>>>> fbca0300694c0e191694e6c9f0651a1a0caee6a2
