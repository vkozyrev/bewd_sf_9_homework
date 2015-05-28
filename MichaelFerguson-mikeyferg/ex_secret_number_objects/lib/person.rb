class Person
# this class will likely be simple, and just remember its name
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def print_name
    puts "Alright, #{name}, let's get started!"
  end

end
