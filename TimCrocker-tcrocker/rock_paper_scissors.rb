Choices = %w(rock paper scissors)

puts 'Rock, paper or scissors'
draws = wins = losses = 0
10.times do
  begin
    puts "-----------------please enter rock paper or scissors-----------------"
    human_choice = gets.chomp.downcase
  end until Choices.include?(human_choice)

  computer_choice_idx = rand(3)

  puts "You chose #{human_choice}, computer choose #{Choices[computer_choice_idx]}"

  if human_choice == Choices[computer_choice_idx]
    puts "---->draw"
    draws += 1
  elsif human_choice == Choices[computer_choice_idx - 1]
    puts "---->Computer wins"
    losses += 1
  else
    puts "---->You win"
    wins += 1
  end
end
puts "wins : #{wins}\nlosses : #{losses}\ndraw:    #{draws}"
if wins > losses
  puts "You won the game"
elsif wins < losses
  puts "You lost!"
else
  puts "The game is a draw"
end
