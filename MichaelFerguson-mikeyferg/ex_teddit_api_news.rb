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

#category base upvote multiplier
def cat_points(entry_upvotes, category)
  default_votes = entry_upvotes
  if category == "cats"
    5 * default_votes
  elsif category == "Watercooler"
    10 * default_votes
  else
    default_votes
  end
end

# #Reddit API ##########################################
#
# #Make the HTTP request:
# reddit_data = RestClient.get("http://www.reddit.com/.json")
#
# # parse the stuff we care about: response.body
# results = JSON.parse(reddit_data.body)
#
# #list of each entry
# entries = results["data"]["children"]
#
# #Iterate through each entry in entries and print out title, subject and upvotes
# entries.each do |entry|
#   puts "Title: #{entry["data"]["title"]}\n Category: #{entry["data"]["subreddit"]}\n Upvotes: #{entry["data"]["upss"]}\n\n"
# end

#############################################################################

#Mashable API ##########################################

#Make the HTTP request:
mashable_data = RestClient.get("http://mashable.com/stories.json")

# parse the stuff we care about: response.body
results = JSON.parse(mashable_data.body)

#list of each entry
entries = results["new"]

#Iterate through each entry in entries and print out title, subject and upvotes
entries.each do |entry|
  puts "Title: #{entry['title']}\n Category: #{entry["channel"]}\n Upvotes: #{cat_points(entry["shares"]["total"], entry["channel"])}"
end
