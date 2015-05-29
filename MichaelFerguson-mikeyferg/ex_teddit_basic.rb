#TEDDIT:  Strings - Student's File
# Teddit is a Ruby text based news aggregator. Think Reddit in your terminal.
# This exercise will be used throughout the ruby portion of this course.
# We will incrementally build a news aggregator (next week using API's)
# We will create a more dynamic Teddit, and pull the latest news stories from Mashable, Digg and Reddit.
# But until then we will hard code stories.
#

#Goals
#1 -  Get the story title, category from user from the command line
def get_story(title, category)
  story_collection = []
  story = {
    title: title,
    category: category,
    points: cat_points(category)
  }
  story_collection.push(story)
  puts story_collection
end

# #2 -  Write a conditional that determines upvotes' based on the category
def cat_points(category)
  default_votes = 1
  if category == "cats"
    5 * default_votes
  elsif category == "dogs"
    4 * default_votes
  else
    default_votes
  end
end


puts "What is the name of your news story?"
story = gets.chomp
puts "What is the category"
category = gets.chomp

get_story(story, category)
