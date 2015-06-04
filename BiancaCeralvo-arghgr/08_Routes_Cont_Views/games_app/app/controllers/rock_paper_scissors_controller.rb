class RockPaperScissorsController < ApplicationController
  def new
    @computer_hands = computer_hands
  end

  def show
    @computer_hand = computer_hands.sample
    @chosen_hand = params[:id]
    @player_won = is_winner?(@computer_hand, @chosen_hand)

    if @player_won == 'wat'
      puts 'wat'
    elsif @player_won
      @outcome_partial = @player_won
    else
      puts 'wat!'
    end
  end

  private

  def computer_hands
    ['rock', 'paper', 'scissors']
  end

  def is_winner?(computer_hand, chosen_hand)
    case chosen_hand
      when computer_hand
        return 'tie'
      when 'rock'
        if computer_hand == 'paper' then return 'lose' end
        if computer_hand == 'scissors' then return 'win' end
      when 'paper'
        if computer_hand == 'rock' then return 'win' end
        if computer_hand == 'scissors' then return 'lose' end
      when 'scissors'
        if computer_hand == 'rock' then return 'lose' end
        if computer_hand == 'paper' then return 'win' end
      else
        return 'wat'
    end
  end
end
