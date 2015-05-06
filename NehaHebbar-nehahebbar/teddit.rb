#TIME: ~ 30 min
# Teddit Condtionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below.
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
  gets.chomp.to_str.downcase
end

def calculate_upvotes(story, category)
	# Write code so that:
		# If the Story is about cats multiply the upvotes by 5
		# If the Story is about bacon multiply the upvotes by 8
		# If the Story is about Food it gets 3 times the upvotes.
  cat = story.include?("cat")
  bacon = story.include?("bacon")
  food = story.include?("food")
  cat_factor = 5
  bacon_factor = 8
  food_factor = 3
  upvotes = 1

  if cat && bacon && food
    upvotes * ([cat_factor,bacon_factor,food_factor].max)
  elsif cat && (bacon || food)
    if bacon
    upvotes * ([cat_factor,bacon_factor].max)
    else
      upvotes * ([cat_factor,food_factor].max)
    end
  elsif bacon && food
    upvotes * ([bacon_factor,food_factor].max)
  elsif cat
    upvotes * cat_factor
  elsif bacon
    upvotes * bacon_factor
  elsif food
    upvotes * food_factor
  else
    upvotes
  end
	#For example:
	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input
puts "Please give it a category:"
category = get_input
upvotes = calculate_upvotes(story, category)
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"
