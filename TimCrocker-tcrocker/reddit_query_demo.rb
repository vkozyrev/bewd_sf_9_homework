require 'pry'
require 'pry-byebug'
require 'rest-client'
require 'json'

#Make the HTTP request:
reddit_data = RestClient.get("http://www.reddit.com/.json")

# parse the stuff we care about: response.body
results = JSON.parse(reddit_data.body)

#Printout the first result's title:
results["data"]["children"][0]["data"]["title"]

#Print out the title of each post
reddit_posts = results["data"]["children"]
reddit_posts.each do |post|
	puts "Title: #{post["data"]["title"]}. Upvotes: #{post["data"]["ups"]}. Subreddit: #{post["data"]["subreddit"]}."
	puts "~" * 25
end

def print_all_stories(reddit_posts)
  reddit_posts.each do |story|
    puts "The title is #{story[:title]} in the category #{story[:subreddit]} with #{story[:ups]} upvotes."
  end
end
