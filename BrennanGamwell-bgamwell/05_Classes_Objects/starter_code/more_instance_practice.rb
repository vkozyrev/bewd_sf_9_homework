# new_person = Person.new(["Brennan", "Joe", "Josh"],["25", "26", "27"],["San Francisco", "New York", "San Jose"])
# puts new_person.name, new_person.age, new_person.city

# Person.new()
# puts Person.name, Person.age, Person.city #says that age is undefined

# puts Person.new(random_people) #Says that random_people is not a defined variable

# binding.pry
#
# class Person
#   attr_accessor :name, :age, :city
#
#   def initialize(name, age, city)
#     @name = name
#     @age = age
#     @city = city
#   end
#
#   def create_a_person
#     puts "What is your name?"
#     name = gets.strip
#     puts "Nice to meet you, #{name}!"
#
#     puts "How old is #{name}?"
#     age = gets.to_s
#     puts "Dude, you are SO OLD!"
#
#     puts "Where does #{name} live?"
#     city = gets.strip
#     puts "Thanks! Now we know how to stalk you."
#
#     Person.new(name, age, city)
#   end
# end
#
# create_a_person #This is where the problem is
# puts Person.name
# #puts "#{name} is #{age} and is from #{city}. Nice to meet you!"
#
# #How do you call a specific instane of a class?
