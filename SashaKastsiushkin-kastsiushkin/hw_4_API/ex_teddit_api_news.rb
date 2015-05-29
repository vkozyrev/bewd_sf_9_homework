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

def calculate_upvotes(upvotes, category)
  if (category.downcase == "business")
    upvotes * 2
  elsif (category.downcase == "world")
    upvotes * 3
  elsif (category.downcase == "news")
    upvotes * 4
  elsif (category.downcase == "sport")
    upvotes * 5
  elsif (category.downcase == "aww")
    upvotes * 0
  else
    upvotes || 0
  end
end

def create_story(title, category, upvotes)
  {
    title: title,
    category: category,
    upvotes: calculate_upvotes(upvotes, category)
  }
end

def print_news(news)
  news.each do |story|
    puts "-> #{story[:category].upcase}: #{story[:title]} (#{story[:upvotes]})"
  end
end

def parse_api(api_url)
  JSON.parse(RestClient.get(api_url))
end

### Main Program ###
mashable_results = parse_api("http://mashable.com/stories.json")
mashable_stories = mashable_results["new"].map do |story|
  create_story(story["title"], story["channel"], story["shares"]["twitter"])
end

reddit_results = parse_api("http://www.reddit.com/.json")
reddit_stories = reddit_results["data"]["children"].map do |story|
  story = story["data"]
  create_story(story["title"], story["subreddit"], story["ups"])
end

puts "Mashable news:"
print_news(mashable_stories)
puts "\n" + "*" * 20 + "\n\n"
puts "Reddit news:"
print_news(reddit_stories)
