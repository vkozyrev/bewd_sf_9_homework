#CODE ALONG & LAB WORK
require 'pry'
require 'pry-byebug'

#State & Object Factory: factory that creates and instiantes the robots
#Behavior: Collection of class methods, instance methods, instance variables, local variables, constants etc.,

class Robot

  #getter && setter methods for each attribute
  attr_accessor  :name, :type, :origin

  #instance variables are available through the class -> @name is an instance variable

  def initialize(name, type, origin)
    @name = name
    @type = type
    @origin = origin
  end

  #instance method
  def fly
    add_wings_and_take_off
  end

  def laser_master
    if type == "Super Android"
      add_laser_training
    else
      "Sorry, no lasers for you. You can't sit with us!"
    end
  end

  #overiding to_s method that comes out of the box (via inheritance )
  def to_s
    "My name is #{@name}. I'm type #{type} from #{origin}!"
  end

  #class methods can be called like this --> Robot.make_robots(5)
  def self.make_robots(num_of_robots)
    robots = num_of_robots.to_i
    robots.times do
      Robot.random_robot_maker
    end
  end

  def self.random_robot_maker
    names = ["Jacinth", "Michael", "Andrea", "Emma", "Bianca", "Brennan", "Sasha", "Vlad", "Bill", "Julie", "Mark", "Dina", "Neha", "Angela", "Vishal", "Kelly"]
    origins = ["Venus", "Mars", "Pluto", "Gotham"]
    types = ["Super Android", "Android"]

    name = names.sample
    origin = origins.sample
    type = types.sample

    robot = Robot.new(name, type, origin)
    puts "Created robot #{name} of type #{type} from #{origin}"
    return robot
  end

  private

  #usually used within instance && class methods
  def add_wings_and_take_off
    puts "Hey my name is #{name} of type #{type}. I'm so awesome I have flying skills!!! "
  end

  def add_laser_training
    puts "Heyyyyyy! I have laser skills"
  end

end

Robot.make_robots(25)

drew = Robot.random_robot_maker
drew.fly
drew.laser_master
