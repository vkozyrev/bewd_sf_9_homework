#TEDDIT:  Strings - Student's File
# Teddit is a Ruby text based news aggregator. Think Reddit in your terminal.
# This exercise will be used throughout the ruby portion of this course.
# We will incrementally build a news aggregator (next week using API's)
# We will create a more dynamic Teddit, and pull the latest news stories from Mashable, Digg and Reddit.
# But until then we will hard code stories.

#Goals
#1 -  Get the story title, category from user from the command line
#2 -  Write a conditional that determines upvotes' based on the category
#3 -  Save every story to a collection (each story should be a hash)
#4 -  Print each story's title, category and upvotes to the screen

def get_story
  puts "What is the title of the story? \n"
  # title = gets.strip
  title = "Cats Attack"
  puts "What is the category of the story? \n"
  # category = gets.strip
  category = 'cats'
  story = {title: title, category: category}
  # puts "Title: #{title}. Category: #{category}"
end

def calculate_votes(story)
  if story[:category] == "cats"
    upvotes = 10
  else
    upvotes = 1
  end

  story[:upvotes] = upvotes
  return story
end

def add_story_to_stories(stories, story)
  stories << story
  return stories
end

def print_all_stories(stories)
  stories.each do |story|
    puts "The title is #{story[:title]} in the category #{story[:category]} with #{story[:upvotes]} upvotes."
  end
end

stories = []
continue = "Yes"
while continue ==  "Yes"
  story = get_story
  story = calculate_votes(story)
  stories = add_story_to_stories(stories, story)
  print_all_stories(stories)
  puts "Do you want to continue?"
  continue = gets.strip
end
