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

# def get_story
#   stories = []
#   story = {}
#   puts "Story Title?"
#   title = gets.strip
#   puts "Category?"
#   category = gets.strip
#   story[:title] = title
#   story[:category] = category
#   stories.push(story)
#   puts stories
#   puts "got it"
# end

stories = []

def get_story(title, category, stories)
  puts "Title: #{title}, Category: #{category}"
  create_story_hash(title, category, stories)
  calculate_votes(category)
end

def calculate_votes(category)
  default_votes = 1
  if category == "cats"
    upvotes = default_votes * 3
    puts upvotes
  else
    upvotes = default_votes
    puts upvotes
  end
end

def create_story_hash(title, category, stories)
  # create hash: title, category
  # push hash into stories array
  story_hash = {title: title, category: category}
  stories.push(story_hash)
  puts stories
end

puts "What is the title of the story? \n"
title = gets.strip
puts "What is the category of the story? \n"
category = gets.strip

get_story(title, category, stories)
