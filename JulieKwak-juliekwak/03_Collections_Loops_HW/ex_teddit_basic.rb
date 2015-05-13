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

def get_story(title, category)
  puts "The title is #{title} and the category is #{category}"
  puts "Upvote: " + calculate_votes(category).to_s
  upvote = calculate_votes(category)

  story_hash = {}
  story_hash[:title] = title
  story_hash[:category] = category
  story_hash[:upvote] = upvote
  story_hash

end

def calculate_votes(category)
  default_upvote = 1
  if category.downcase.include?("funny")
    upvote = default_upvote * 3
  elsif category.downcase.include?("cute")
    upvote = default_upvote * 2
  else
    upvote = default_upvote
  end
  upvote
end




puts "What is the title of the story?"
title = gets.strip
puts "What is the category for the story?"
category = gets.strip

puts get_story(title, category)
