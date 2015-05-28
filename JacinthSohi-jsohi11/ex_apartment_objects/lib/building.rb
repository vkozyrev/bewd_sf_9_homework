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
    puts "-----------Highrise Luxury Apartment List-----------"
  	puts @apartments
  end

  def to_s
    "#{name} at #{address} has #{@apartments.count} apartments."
  end
end
