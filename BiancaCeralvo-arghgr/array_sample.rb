require 'pry'
require 'pry-byebug'

def sample_of_class
  class_mates = []
  class_mates.push("Sasha", "Andrea", "Angela", "Robert")
  class_mates.each do |class_mate|
    selected_class_mate = class_mates.sample
    class_mates.delete(selected_class_mate)
    puts class_mates unless class_mates.length == 0
  end
end

sample_of_class
