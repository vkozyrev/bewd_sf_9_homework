require 'pry'
require 'pry-byebug'

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

def show_message(message)
  puts message
end

def get_input
  $stdin.gets.strip
end

def show_new_story_notification(story)
  show_message("New story added! #{story[:title]}, Category: #{story[:category].capitalize}, Current Upvotes: #{story[:upvotes]}")
end

def calculate_upvotes(story)
  story[:upvotes] = 1

  if story[:title].downcase.include? 'cat'
    story[:upvotes] *= 5
  elsif story[:title].downcase.include? 'bacon'
    story[:upvotes] *= 8
  end

  if story[:category].downcase == "food"
    story[:upvotes] *= 3
  end
end

def show_all_stories(stories)
  stories.each do |story|
    show_message "Story: #{story[:title]}, Category: #{story[:category]}, Current Upvotes: #{story[:upvotes]}"
  end
end

stories = []

show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
answer = "y"

while answer == "y"
  story = {}

  show_message("Please enter a News story:")
  story[:title] = get_input

  show_message("Please give it a category:")
  story[:category] = get_input

  calculate_upvotes(story)

  stories << story
  show_new_story_notification(story)

  show_message("Would you like to add another story? Enter 'y' or 'n'")
  answer = get_input.strip.downcase
end

show_all_stories stories
