#Class Labe - TIME: ~ 30 min
#Boolean & Conditionals - Student's File
  #Transform each statement into a method.
  #Each method should you a conditional to determine if the statment is true/false
  #Each method should provide a "response" with the correct answer

#Check out this example Example
def compare_two_numbers
  puts "Is 7 greater than 8? \n"
  if 7 > 8
    puts " Yes, it is!\n\n"
  else
    puts " No, it's not.\n\n"
  end
end

### #1
def multiply_and_compare
  puts "Is 8 x 77 greater than 600?\n"
  if 8 * 77 > 600
    puts " Yes, it is!\n\n"
  else
    puts " No, it's not.\n\n"
  end
end

### #2
def one_equal
  puts "Is 1 equal to (7 - 6)?\n"
  if 7-6 == 1
    puts " Yes, it is!\n\n"
  else
    puts " No, it's not.\n\n"
  end
end

## 3
def seventy_seven_greater
  puts "Is 77 greater than 50 AND (88 / 3) less than 30?\n"
  if 77 > 50 && 88/3 < 30
    puts " Yes, it is!\n\n"
  else
    puts " No, it's not.\n\n"
  end
end

## 4
def wheelbarrow
  puts "Is the length of the word 'wheelbarrow' more than 10 characters long?\n"
  if "wheelbarrow".length > 10
    puts " Yes, it is!\n\n"
  else
    puts " No, it's not.\n\n"
  end
end

## 5
def seconds_in_hour
  puts "Are the amount of seconds in an hour greater than or equal to 3000?\n"
  if 60*60 >= 3000
    puts " Yes, it is!\n\n"
  else
    puts " No, it's not.\n\n"
  end
end

## 6
def slaughter
  puts "Does the word 'slaughter' include the word laughter?\n"
  if "slaughter".include?("laughter")
    puts " Yes, it is!\n\n"
  else
    puts " No, it's not.\n\n"
  end
end


#call each method
compare_two_numbers
multiply_and_compare
one_equal
seventy_seven_greater
wheelbarrow
seconds_in_hour
slaughter
