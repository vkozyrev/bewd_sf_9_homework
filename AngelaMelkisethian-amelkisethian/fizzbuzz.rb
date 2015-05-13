#this is the syntax used when something is only one line of code
def fizzbuzz_alt
  1.upto(100) {|number| puts number}
end

def fizzbuzz
  1.upto(100) do |number|
    puts number
    if number % 5 == 0 && number % 3 == 0
      puts "fizzbuzz"
    elsif number % 5 == 0 && number % 3 != 0
      puts "fizz"
    elsif number % 3 == 0 && number % 5 != 0
      puts "buzz"
    else
      puts number
    end
  end
end


fizzbuzz
