#CODE ALONG & LAB WORK
require 'pry'
require 'pry-byebug'

#State & Object Factory: factory that creates and instiantes the robots
#Behavior: Collection of class methods, instance methods, instance variables, local variables, constants etc.,

class Robot

  #getter && setter methods for each attribute
  attr_accessor  :name, :type, :origin

  #instance variables are available through the class. @name is an instance variable
  def initialize(name, type, origin)
  end

  #instance method
  def fly
  end

  def laser_master
  end

  #overiding to_s method that comes out of the box
  def to_s
  end

  #class methods can be called like this --> Robot.make_robots(5)
  def self.make_robots(num_of_robots)
  end

  def self.random_robot_maker
  end

  private

  #usually used within instance && class methods.
  def add_wings_and_take_off
  end

  def add_laser_training
  end

end
