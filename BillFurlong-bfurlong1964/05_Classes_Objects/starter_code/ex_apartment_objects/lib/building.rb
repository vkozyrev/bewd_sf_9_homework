#Building Class
require 'pry'
require 'pry-byebug'

class Building
  attr_accessor :name, :address, :apartments
  #hint apartments should be an array i.e @apartments = []

  def initialize(name, address)
    @name = name
    @address = address
    @apartments = [ ]
  end

#within an instance method, the building knows itself, so "self" is always
#assumed. so self.apartments && apartments are
#the same within the method view_apartments
  def view_apartments
   @apartments.each do |apartment|
     puts "Apartment: #{apartment.name} \n"
     puts "Sqft: #{apartment.sqft} \n"
     puts "Bedrooms: #{apartment.bedrooms} | Bathrrooms: #{apartment.bathrooms} \n"
     if apartment.not_occupied?
       puts "This apartment is vacant"
     end
  end
end

def not_occupied?
  @renter == nil? #or @renter == nil \
end
# binding.pry

 # def self.new(name, address, apartments)
 #  #  @name = name
 #  #  @address = address
 #  #  @apartments = []
 #  # "#{@name} at #{@address} has #{@apartments.count} apartments."
 # end
end

# Here's where I tested that the code can actually create a building:
# building = Building.new("Walden Park", "810 El Paseo")
# puts building.name
