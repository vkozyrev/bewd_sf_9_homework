class RockPaperScissorsController < ApplicationController
  def new
    @hands = hands
  end

  def show
    @secret_hand = hands.sample
    @chosen_hand = hands[params[:id].to_i]
    @result = is_winner?
  end

  private

  def hands
    # 0 = Rock
    # 1 = Paper
    # 2 = Scissor
    [{ :id => 0, :name => 'Rock', :image => 'rock.jpg'},
      { :id => 1, :name => 'Paper', :image => 'paper.jpg'},
      { :id => 2, :name => 'Scissors', :image => 'scissors.jpg'}]
  end

  def is_winner?
    # 0 = trie
    # -1 = loss
    # 1 = win
    victory_array = [[0, -1, 1],[1, 0, -1],[-1, 1, 0]]
    victory_array[@chosen_hand[:id]][@secret_hand[:id]]
  end
end
