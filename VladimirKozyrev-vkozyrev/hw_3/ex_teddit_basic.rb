#TEDDIT:  Strings - Student's File
# Teddit is a Ruby text based news aggregator. Think Reddit in your terminal.
# This exercise will be used throughout the ruby portion of this course.
# We will incrementally build a news aggregator (next week using API's)
# We will create a more dynamic Teddit, and pull the latest news stories from Mashable, Digg and Reddit.
# But until then we will hard code stories.
#

#Goals
#1 -  Get the story title, category from user from the command line
#2 -  Write a conditional that determines upvotes' based on the category
#3 -  Save every story to a collection (each story should be a hash)
#4 -  Print each stories title, category and upvotes to the screen

$stories = {}

def log_story(title, category, upvotes = 1)
  if category.downcase == 'cats'
    upvotes *= 5
  elsif category.downcase == 'bacon'
    upvotes *= 8
  elsif category.downcase == 'food'
    upvotes *= 3
  end
  $stories[title.to_sym] = { :title=> title, :category=> category, :upvotes=> upvotes }
  puts "Added #{$stories[title.to_sym]} to hash"
  puts "All stories are now: #{$stories}"
end

while true
  puts "Please enter a story title: "
  title = gets.chomp
  puts "Please enter a category: "
  category = gets.chomp
  puts "Please enter the upvote amount: "
  upvotes = gets.chomp.to_i
  log_story title, category, upvotes
end