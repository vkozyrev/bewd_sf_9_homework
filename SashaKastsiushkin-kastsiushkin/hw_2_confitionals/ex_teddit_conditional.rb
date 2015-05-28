#TIME: ~ 30 min
# Teddit Condtionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below.
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
  gets
end

def calculate_upvotes(story, category)
	# Write code so that:
		# If the Story is about cats multiply the upvotes by 5
		# If the Story is about bacon multiply the upvotes by 8
		# If the Story is about Food it gets 3 times the upvotes.
    # I assume that conditions are mutually exclusivy, so that it's 1 of the options and not a mix
    puts "Enter initial number of upvotes"
    upvotes = get_input.strip.to_i
    if story.downcase.include? "cat"
      upvotes = upvotes * 5
    elsif story.downcase.include? "bacon"
      upvotes = upvotes * 8
    elsif story.downcase.include? "food"
      upvotes = upvotes * 3
    end

	#For example:
	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input.strip
puts "Please give it a category:"
category = get_input.strip
upvotes = calculate_upvotes(story, category)
puts "New story added! \n\n\"#{story}\" \nCategory: #{category.capitalize} \nCurrent Upvotes: #{upvotes}"
