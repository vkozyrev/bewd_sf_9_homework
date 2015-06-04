class SecretNumbersController < ApplicationController

  def new
    @secret_numbers = secret_numbers
  end

  def show
    @secret_number = secret_numbers.sample
    @chosen_number = params[:id].to_i
    @player_won = is_winner?

    if @player_won
      @outcome_partial = 'win'
    else
      @outcome_partial = 'lose'
    end
  end

  private

  def secret_numbers
    (1..5).to_a
  end

  def is_winner?
    @secret_number == @chosen_number
  end

end
