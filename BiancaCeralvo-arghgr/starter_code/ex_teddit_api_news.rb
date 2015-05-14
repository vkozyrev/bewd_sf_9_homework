#Add remote data source and pull in stories from Reddit, Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'pry'
require 'pry-byebug'
require 'rest-client'
require 'json'

#Make the HTTP request:
reddit_data = RestClient.get("http://www.reddit.com/r/aww/.json")
mashable_data = RestClient.get("http://mashable.com/stories.json")

# parse the stuff we care about: response.body
reddit_results = JSON.parse(reddit_data.body)
mashable_results = JSON.parse(mashable_data.body)

#Print out the title of each post
reddit_posts = reddit_results["data"]["children"]
reddit_hashes = []
reddit_posts.each do |post|
  title = post["data"]["title"]
  category = post["data"]["subreddit"]
  upvotes = post["data"]["ups"]
  reddit_hash = {title: title, category: category, upvotes: upvotes}
  reddit_hashes.push(reddit_hash)
end

reddit_hashes.each do |hash|
  puts "*" * 10
  puts "Title: #{hash[:title]}\nUpvotes: #{hash[:upvotes]}\nCategory: #{hash[:category]}"
end

mashable_posts = mashable_results["new"]
mashable_hashes = []
mashable_posts.each do |post|
  title = post["title"]
  category = post["channel"]
  shares = post["shares"]["total"]
  mashable_hash = {title: title, category: category, shares: shares}
  mashable_hashes.push(mashable_hash)
end

mashable_hashes.each do |hash|
  puts "*" * 10
  puts "Title: #{hash[:title]}\nUpvotes: #{hash[:shares]}\nCategory: #{hash[:category]}"
end
