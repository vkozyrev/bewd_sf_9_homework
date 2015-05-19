# FizzBuzz

# 1.upto(100) do |i|
#   if i % 3 == 0 && i % 5 == 0
#     puts "FizzBuzz"
#   elsif i % 3 == 0
#     puts "Fizz"
#   elsif i % 5 == 0
#     puts "Buzz"
#   else
#     puts i
#   end
# end

def fizzbuzz
  # 1.upto(100) {|number| puts number}
  1.upto(100) do |number|
    if number % 5 == 0 && number % 3 == 0
      puts "FizzBuzz"
    elsif number % 5 == 0 && number % 3 != 0
      puts "Buzz"
    elsif number % 3 == 0 && number % 5 != 0
      puts "Fizz"
    else
      puts number
    end
  end
end
fizzbuzz
