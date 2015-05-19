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

# Calculate votes based on title
def calculate_votes(original_votes, title)
  votes = 1
  if (title.to_s.include?("cat")) || (title.to_s.include?("meow")) || (title.to_s.include?("purr"))
    votes = original_votes * 3
  else
    votes = original_votes
  end
  return votes
end

# Hash Reddit stories and put hashes in array
reddit_posts = reddit_results["data"]["children"]
reddit_hashes = []
reddit_posts.each do |post|
  title = post["data"]["title"]
  category = post["data"]["subreddit"]
  votes = calculate_votes(post["data"]["ups"], title)
  reddit_hash = {title: title, category: category, votes: votes}
  reddit_hashes.push(reddit_hash)
end

# Hash Mashable stories and put hashes in array
mashable_posts = mashable_results["new"]
mashable_hashes = []
mashable_posts.each do |post|
  title = post["title"]
  category = post["channel"]
  votes = calculate_votes(post["shares"]["total"], title)
  mashable_hash = {title: title, category: category, votes: votes}
  mashable_hashes.push(mashable_hash)
end

puts "TEDDIT FRONT PAGE"

## Print Reddit stories
reddit_hashes.each do |hash|
  puts "*" * 10
  puts "Title: #{hash[:title]}\nVotes: #{hash[:votes]}\nCategory: #{hash[:category]}"
end

## Print Mashable stories
mashable_hashes.each do |hash|
  puts "*" * 10
  puts "Title: #{hash[:title]}\nVotes: #{hash[:votes]}\nCategory: #{hash[:category]}"
end
