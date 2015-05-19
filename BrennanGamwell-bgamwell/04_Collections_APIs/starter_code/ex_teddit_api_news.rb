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

###REDDIT

# def front_page(reddit_titles,digg_titles,mashable_titles)
#   puts "Here's what we've got going on on Reddit:"
#   puts reddit_titles
#   puts "Here's what we've got going on on Digg:"
#   puts digg_titles
#   puts "Here's what we've got going on on Mashable:"
#   puts mashable_titles
# end

#Stops working once wrapped in a function

def get_reddit_titles

reddit_data = RestClient.get("http://www.reddit.com/r/aww/.json")

reddit_results = JSON.parse(reddit_data.body)

# reddit_results["data"]["children"][0]["data"]["title"]

  reddit_titles = reddit_results["data"]["children"]
  reddit_titles.each do |post|
    puts post["data"]["title"]
    end
end


#
# puts all_titles

    # if post.downcase.include? cat
    #   upvotes = 5
    # elsif post.downcase.include? dog
    #   upvotes = 10

# end

  # post["data"]["ups"]
  # post["data"]["subreddit"]
#
# ###DIGG
#
def get_digg_titles
  digg_data = RestClient.get("http://digg.com/api/news/popular.json")

  digg_results = JSON.parse(digg_data.body)
#
#  #Prints the first title: digg_results["data"]["feed"][0]["content"]["title_alt"]
#
   digg_titles = digg_results["data"]["feed"]
   digg_titles.each do | post |
     puts post["content"]["title_alt"]
  #  post["diggs"]["count"]
   end
end

# ###Mashable
#
def get_mashable_titles
  mashable_data = RestClient.get("http://mashable.com/stories.json")

  mashable_results = JSON.parse(mashable_data.body)

#mashable_titles = mashable_results["new"][0]["title"]

  mashable_titles = mashable_results["new"]
  mashable_titles.each do | post |
    puts post["title"]
  # post["shares"]["total"]
  end
end

# puts get_reddit_titles
# puts get_mashable_titles
# puts get_digg_titles

get_reddit_titles
get_digg_titles
get_mashable_titles

puts get_reddit_titles.class

all_titles = {}
all_titles[:title]
all_titles[:upvotes]
