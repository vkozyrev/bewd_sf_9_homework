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

#Create reddit hash
def create_reddit_array
  reddit_stories_array = []
  #Make the HTTP request:
  reddit_data = RestClient.get("http://www.reddit.com/.json")
  #Parse the stuff we care about: response.body
  reddit_results = JSON.parse(reddit_data.body)
  #Create array
  reddit_posts = reddit_results["data"]["children"]
  reddit_posts.each do |post|
    holder_hash = {
      title: post["data"]["title"],
      category: post["data"]["subreddit"],
      upvotes: post["data"]["ups"]
    }
    reddit_stories_array << holder_hash
  end
  reddit_stories_array
end


def create_mash_array
  mash_stories_array = []
  mash_data = RestClient.get("http://mashable.com/stories.json")
  mash_results = JSON.parse(mash_data.body) #Hash
  #Create array
  mash_results.each do |type_key, post_array|
    if type_key != "channel"
      post_array.each do |post|
        holder_hash = {
          title: post["title"],
          category: post["channel"],
          upvotes: post["shares"]["total"]
        }
        mash_stories_array << holder_hash
      end
    end
  end
  mash_stories_array
end


def print_front_page
  reddit_stories_array = create_reddit_array
  mash_stories_array = create_mash_array
  puts "----------WELCOME TO TEDDIT!----------"
  puts "\n\n**********************Today's stories from Reddit**********************\n\n"
  reddit_stories_array.each do |story|
    puts "Title: #{story[:title]}"
    puts "    Category: #{story[:category]}"
    puts "    Upvotes: #{story[:upvotes]}"
  end
  puts "\n\n**********************Today's stories from Mashable**********************\n\n"
  mash_stories_array.each do |story|
    puts "Title: #{story[:title]}"
    puts "    Category: #{story[:category]}"
    puts "    Upvotes: #{story[:upvotes]}"
  end
end

print_front_page
