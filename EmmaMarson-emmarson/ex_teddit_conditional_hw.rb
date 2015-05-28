# story.include? "cats"

def upvotes
	upvotes = 1
end

def get_story
	story = gets.strip
end

def get_category
	category = gets.strip
end

def calculate_upvotes(story, category)
	if story.include? "cats"
		puts upvotes*5
	elsif story.include? "bacon"
		puts upvotes*8
	elsif story.include? "food"
		puts upvotes*3
	end
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_story
puts "Please give it a category:"
category = get_category
puts "New story added! '#{story}', Category: #{category.capitalize}, Current Upvotes: " 
upvotes = calculate_upvotes(story, category)