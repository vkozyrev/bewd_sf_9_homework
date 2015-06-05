require 'pry'
require 'pry-byebug'
require 'rest-client'
require 'json'

#Add remote data source and pull in stories from Reddit, Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
  #http://www.reddit.com/r/aww/.json

  def show_message(message)
    puts message
  end

# These stories will also be upvoted based on our rules. No more user input!

def mashable_headlines
  mashable_data = RestClient.get("http://mashable.com/stories.json")
  mashable_parsed = JSON.parse(mashable_data.body)
  mashable_stories = []
  mashable_parsed["new"].each do |story|
  mashable_story = {}
  mashable_story[:title] = story["title"]
  mashable_story[:category] = story["channel"]
  mashable_story[:upvotes] = story["shares"]["total"]
  mashable_stories << mashable_story

  title_test = mashable_story[:title]
  upvotes_test = story["shares"]["total"]
  if title_test.include? "cat"
    upvotes_test = upvotes_test * 5
  elsif title_test.include? "dog"
    upvotes_test = upvotes_test * 25
  end

  puts "Title: #{story["title"]}. Category: #{story["channel"]}. Upvotes: #{upvotes_test}"
  end
end


def reddit_headlines
  reddit_data = RestClient.get("http://www.reddit.com/r/aww/.json")
  reddit_parsed = JSON.parse(reddit_data.body)
  reddit_stories = []
  reddit_parsed["data"]["children"].each do |story|
  reddit_story = {}
  reddit_story[:title] = story["data"]["title"]
  reddit_story[:category] = story["data"]["subreddit"]
  reddit_story[:upvotes] = story["data"]["ups]"]
  reddit_stories << reddit_story

  title_test = reddit_story[:title]
  upvotes_test = story["data"]["ups"]
  if title_test.include? "cat"
    upvotes_test = upvotes_test * 5
  elsif title_test.include? "dog"
    upvotes_test = upvotes_test * 25
  end

  puts "Title: #{story["data"]["title"]}. Category: #{story["data"]["subreddit"]}. Upvotes: #{upvotes_test}"
  end
end

# Add each story to an array and display your "Front page"

show_message("Welcome to Teddit. Today's news Today! Here is your fabulous front page...".upcase)
show_message("*" * 100)
show_message("Latest, Greatest Reddit Headlines for You!")
show_message("*" * 100)
reddit_headlines
show_message("*" * 100)
show_message("Latest, Greatest Mashable Headlines for You!")
show_message("*" * 100)
mashable_headlines
