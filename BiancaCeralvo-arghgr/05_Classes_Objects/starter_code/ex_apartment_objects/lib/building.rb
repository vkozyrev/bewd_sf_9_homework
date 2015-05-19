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
    apartments.each do |apartment|
      puts "Apartment #{apartment.name} has #{apartment.sqft} sqft, #{apartment.bedrooms} bedrooms and #{apartment.bathrooms} bathrooms"
    end
  end

  def to_s
    "#{name} at #{address} has #{@apartments.count} apartments."
  end
end
