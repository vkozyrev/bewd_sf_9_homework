#FizzBuzz
=begin
Write a program that prints integers 1 to 100. But for multiples of three print "Fizz" instead of the number and for the multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz"

Here's an example of what your output should look like:

<img src="http://www.korenlc.com/wp-content/uploads/2014/03/fizz.png">
=end

=begin
def fizzbuzz
  number = 1
  while number < 100 + 1
    if number % 5 == 0 && number % 3 == 0
      puts "FizzBuzz"
    elsif number % 3 == 0 # or number % 5 == 0 && number % 3 != 0
      puts "Fizz"
    elsif number % 5 == 0 # or number % 3 == 0 && number % 5 != 0
      puts "Buzz"
    else
      puts number
    end
    number = number + 1
  end
end

fizzbuzz
=end
=begin
def fizzbuzz_kisha
  1.upto(100) {|number| puts number}
end

fizzbuzz_kisha
=end




# trying again for practice

def fizzbuzz
  number = 1
  while number < 100 + 1
    if number%3 == 0 && number % 5 == 0
      puts 'FizzBuzz'
    elsif number % 3 == 0
      puts 'Fizz'
    elsif number % 5 == 0
      puts 'Buzz'
    else
      puts number
    end
    number = number + 1
  end
end

fizzbuzz
