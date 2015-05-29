#Building Class
class Building
  attr_accessor :name, :address, :apartments
  #hint apartments should be an array i.e @apartments = []

  def initialize(name, address)
    @name = name
    @address = address
    @apartments = []
  end

  def view_apartments
    puts "Here is a list of all of the apartments"
    @apartments.each_with_index do |apartment, index|
      if apartment.rent != nil
        puts "Here is the data for Apartment #{index + 1}: Name-#{apartment.name}, SQFT-#{apartment.sqft}, Bedrooms-#{apartment.bedrooms}, Bathrooms-#{apartment.bathrooms}, Rent-#{apartment.rent}, Renter Name-#{apartment.renter}"
      else
        puts "Here is the data for Apartment #{index + 1}: Name-#{apartment.name}, SQFT-#{apartment.sqft}, Bedrooms-#{apartment.bedrooms}, Bathrooms-#{apartment.bathrooms}, No Renters."
      end
    end
  end

  def to_s
    "#{name} at #{address} has #{@apartments.count} apartments."
  end
end
