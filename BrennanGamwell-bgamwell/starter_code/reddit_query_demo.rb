require 'pry'
require 'pry-byebug'
require 'rest-client'
require 'json'

#Make the HTTP request:
reddit_data = RestClient.get("http://www.reddit.com/r/aww/.json")

# parse the stuff we care about: response.body
results = JSON.parse(reddit_data.body)

#Printout the first result's title:
results["data"]["children"][0]["data"]["title"]

#Print out the title of each post
results["data"]["children"].each do |post|
	puts post["data"]["title"]
end
