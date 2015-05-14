#Add remote data source and pull in stories from Reddit, Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
  #http://www.reddit.com/r/aww/.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'pry'
require 'pry-byebug'
require 'rest-client'
require 'json'

stories = []

#Create the upvote calculator
def calculate_upvotes (title, category)
	upvotes = 1
	if title.downcase.include? "cat"
		upvotes == upvotes * 5
	elsif title.downcase.include? "bacon"
		upvotes == upvotes * 8
	end
	if category.downcase.include? "food"
		upvotes == upvotes * 3
	end
end

#Create a method to gather the reddit stories, and save them in an array with hashes of story details
def find_reddit_stories
	reddit_stories = []
	reddit_data = RestClient.get("http://www.reddit.com/r/aww.json")
	reddit_results = JSON.parse(reddit_data)
	reddit_posts = reddit_results["data"]["children"][0]
	reddit_posts.each do |post|
		title = reddit_posts["data"]["title"]
		upvotes = reddit_posts["data"]["ups"]
		category = reddit_posts["data"]["subreddit"]
	end
	reddit_story = {title: title, upvotes: upvotes, category: category}
	reddit_stories.push(reddit_story)
end

#Create a method to gather the Mashable stories, and save them in an array with hashes of story details
def find_mashable_stories
	mashable_stories = []
	mashable_data = RestClient.get('http://mashable.com/stories.json')
	mashable_results = JSON.parse(mashable_data)
	mashable_posts = mashable_results["new"][0]
	mashable_posts.each do |post|
		title = mashable_posts["title"]
		upvotes = mashable_posts["shares"]["total"]
		category = mashable_posts["channel"]
	end
	mashable_story = {title: title, upvotes: upvotes, category: category}
	mashable_stories.push(mashable_story)
end

#Create a method to gather the digg stories, and save them in an array with hashes of story details
# def find_digg_stories
# 	digg_stories = []
# 	digg_data = RestClient.get('http://digg.com/api/news/popular.json')
# 	digg_results = JSON.parse(digg_data)
# 	digg_posts = digg_results["data"]["feed"][0]
# 	digg_posts.each do |post|
# 		title = digg_posts["content"]["title_alt"]
# 		upvotes = digg_posts["diggs"]["count"]
# 		category = digg_posts["content"]["tags"][0]["name"]
# 	end
#   digg_story = {title: title, upvotes: upvotes, category: category}
#   digg_stories.push(digg_story)
# end

#Create a method to display the stories in the proper format, using interpolation
def display_stories(story)
	puts "Title: #{story[:title]}, Category: #{story[:category]}, Upvotes: #{story[:upvotes]}"
end

#Print the aggregated news stories
puts "*" * 100
puts "TEDDIT NEWS AGGREGATOR"
puts "*" * 100
puts
puts "---Reddit Stories---"
display_stories(find_reddit_stories)
puts "---Mashable Stories---"
display_stories(find_mashable_stories)
#puts "---Digg Stories---"
#display_stories(find_digg_stories)

