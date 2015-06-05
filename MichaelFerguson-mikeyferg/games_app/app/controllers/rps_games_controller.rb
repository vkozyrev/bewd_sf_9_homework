class RpsGamesController < ApplicationController
  def new
    @computer_guesses = computer_guesses
  end

  def show
    @computer_guess = computer_guesses.sample
    @player_pick = params[:id].to_i
    @winner = is_winner?
  end

  private

  def computer_guesses
    (0..2).to_a
  end

  def is_winner?
    @computer_guess == @player_pick
  end
end
