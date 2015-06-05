#Class Labe - TIME: ~ 30 min
#Boolean & Conditionals - Student's File
  #Transform each statement into a method.
  #Each method should you a conditional to determine if the statment is true/false
  #Each method should provide a "response" with the correct answer

#Check out this example Example
def compare_two_numbers
  puts "Is 7 greater than 8? \n"
  if 7 > 8
    puts "Yes, 7 is greater than 8"
  else
    puts "No, 7 is not greater than 8"
  end
end

def check_if_greater(num1, num2)
  if num1 > num2
    puts "Yes, #{num1} is greater than #{num2}"
    return true
  else
    puts "No, #{num1} is not greater than #{num2}"
    return false
  end
end

### #1
def method_1
  puts "1."
  puts "Is 8 x 77 greater than 600?"
  val1 = 8 * 77
  val2 = 600
  check_if_greater(val1, val2)
end

### #2
def method_2
  puts "2."
  puts "Is 1 equal to (7 - 6)?"
  val1 = 1
  val2 = (7 - 6)
  if val1 == val2
    puts "Yes, #{val1} is equal to #{val2}"
  else
    puts "No, #{val1} is not equal to #{val2}"
  end
end

## 3
def method_3
  puts "3."
  puts "Is 77 greater than 50 AND (88 / 3) less than 30?"
  check1 = check_if_greater(77,50)
  val2_1 = (88 / 3)
  val2_2 = 30
  check2 = check_if_greater(val2_1,val2_2)
  if check1 == true && check2 == true
    puts "Yes, #{check1} and #{check2}"
  else
    puts "No, #{check1} and #{check2}"
  end
end

## 4
def method_4
  puts "4."
  puts "Is the length of the word 'wheelbarrow' more than 10 characters long?"
  val1 = "wheelbarrow".length
  val2 = 10
  check_if_greater(val1, val2)
end

## 5
def method_5
  puts "5."
  puts "Are the amount of seconds in an hour greater than or equal to 3000?"
  val1 = 60 * 60
  val2 = 3000
  if val1 >= val2
    puts "Yes, #{val1} is greater than or equal to #{val2}"
  elsif val1 < val2
    puts "No, #{val1} is less than #{val2}"
  end
end

## 6
def method_6
  puts "6."
  puts "Does the word 'slaughter' include the word laughter?"
  val1 = "slaughter"
  val2 = "laughter"
  if val1.include?(val2)
    puts "Yes, the word 'slaughter' includes the word 'laughter'"
  else
    puts "No, the word 'slaughter' doesn't include the word 'laughter'"
  end
end

puts "*********** methods called ***********"
#call each method
compare_two_numbers
method_1
method_2
method_3
method_4
method_5
method_6
puts "************ end methods ************"
