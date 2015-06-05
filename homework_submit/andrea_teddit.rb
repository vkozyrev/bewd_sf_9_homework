require 'pry'
require 'pry-byebug'



def calculate_upvotes(story, category)
	# Write code so that:
		# If the Story is about cats multiply the upvotes by 5
		# If the Story is about bacon multiply the upvotes by 8
		# If the Story is about Food it gets 3 times the upvotes.

	#For example:
	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input.chomp
puts "Please give it a category:"
category = get_input.chomp
upvotes = calculate_upvotes(story, category)
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"

def calculate_upvotes(story)
  story[:upvotes] = 1
  if story[:title].downcase.include? 'cat'
    story[upvotes] *=5
  elsif story[:title].downcase.include? 'bacon'
    story[upvotes] *= 8
  else story[:title].downcase = "food"
    story[:upvotes] *= 3
  end
end


def show_all_stories(stories)
  stories.each do |story|
    show_message list out each story
    sort list out stories by category or by name
    find a category that includes desired input like cat
