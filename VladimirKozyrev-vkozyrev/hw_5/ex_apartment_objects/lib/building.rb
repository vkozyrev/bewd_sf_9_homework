#Building Class
class Building
  attr_accessor :name, :address, :apartments
  #hint apartments should be an array i.e @apartments = []

  def initialize(name, address)
    @address = address
    @name = name
    @apartments = []
  end

  def view_apartments
    puts "Building #{@name} Apartment List"
    @apartments.each do |apartment|
      puts "---------------------------------"
      puts apartment
      puts %{Occupant: #{apartment.is_occupied? ? "None" : apartment.renter.name}}
    end
  end

  def to_s
    "#{@name} at #{@address} has #{@apartments.count} apartments."
  end
end
