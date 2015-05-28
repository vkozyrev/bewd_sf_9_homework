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
require 'pry'

def get_input(message)
  puts message
  gets.chomp
end

def get_story(title, category, upvotes)
  story = {
    title: title,
    category: category,
    upvotes: upvotes
  }
end

def calculate_upvotes(category)
  upvotes = 1
  if category.downcase.include?("cat")
    upvotes = upvotes * 5
  elsif category.downcase.include?("bacon")
    upvotes = upvotes * 5
  elsif category.downcase.include?("food")
    upvotes = upvotes * 5
  end
  upvotes
end

def print_news(news)
  puts "News:\n"
  news.each do |story|
    puts "#{story[:title]} (#{story[:category]} - #{story[:upvotes]})"
  end
end

### Main program
news = []

title = get_input("Enter story title")
category = get_input("Enter story category")
upvotes = calculate_upvotes(category)
news << get_story(title, category, upvotes)
print_news(news)