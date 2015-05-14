#Add remote data source and pull in stories from Reddit, Mashable and Digg.
  # http://mashable.com/stories.json
  #http://www.reddit.com/r/aww/.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'pry'
require 'pry-byebug'
require 'rest-client'
require 'json'


reddit_api = RestClient.get("http://www.reddit.com/.json")
mashable_api = RestClient.get("http://mashable.com/stories.json")

reddit_parsed = JSON.parse(reddit_api.body)
mashable_parsed = JSON.parse(mashable_api.body)


# Reddit: individual stories into individual hashes, into an array
reddit_stories = []
reddit_parsed["data"]["children"].each do |story|
  reddit_story = {}
  reddit_story[:title] = story["data"]["title"]
  reddit_story[:category] = story["data"]["subreddit"]
  reddit_story[:upvotes] = story["data"]["ups"]
  reddit_stories.push(reddit_story)
end

puts "REDDIT STORIES".center(25)
puts reddit_stories

puts ""
puts "*" * 25
puts ""

# Mashable: individual stories into individual hashes, into an array
mashable_stories = []
mashable_parsed["hot"].each do |story| #each thing in the array, which is each a hash
  mashable_story = {}
  mashable_story[:title] = story["title"]
  mashable_story[:category] = story["channel"]
  mashable_story[:upvotes] = story["shares"]["total"]
  mashable_stories.push(mashable_story)
end

puts "MASHABLE STORIES".center(25)
puts mashable_stories
