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

$stories = {}

def log_story(title, category, upvotes = 1)
  if category.downcase == 'aww'
    upvotes *= 5
  elsif category.downcase == 'funny'
    upvotes *= 8
  elsif category.downcase == 'gaming'
    upvotes *= 3
  end
  $stories[title.to_sym] = { :title=> title, :category=> category, :upvotes=> upvotes }
  puts "Added #{$stories[title.to_sym]} to hash"
end

def print_stories
  i = 1
  $stories.keys.each do |key|
    puts "#{i}-->) Title: #{$stories[key][:title]} Category: #{$stories[key][:category]} Upvotes: #{$stories[key][:upvotes]}"
    i += 1
  end
end

def add_reddit_stories
  reddit_stories = RestClient.get("http://www.reddit.com/.json")
  reddit_stories = JSON.parse(reddit_stories.body)
  reddit_stories["data"]["children"].each do |post|
    log_story(post["data"]["title"], post["data"]["subreddit"], post["data"]["ups"].to_i)
  end
end

def add_mashable_stories
  # upvotes will be total shares
  mashable_stories = RestClient.get("http://mashable.com/stories.json")
  mashable_stories = JSON.parse(mashable_stories.body)
  mashable_stories["hot"].each do |post|
    log_story(post["title"], post["channel"], post["shares"]["total"].to_i)
  end
end

def add_digg_stories
  digg_stories = RestClient.get("http://digg.com/api/news/popular.json")
  digg_stories = JSON.parse(digg_stories.body)
  digg_stories["data"]["feed"].each do |post|
    log_story(post["content"]["title"], post["content"]["tags"][0]["name"], post["diggs"]["count"].to_i)
  end
end

add_reddit_stories
add_mashable_stories
add_digg_stories
print_stories