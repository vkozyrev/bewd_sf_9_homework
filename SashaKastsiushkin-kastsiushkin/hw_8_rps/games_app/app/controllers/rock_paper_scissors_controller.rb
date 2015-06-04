class RockPaperScissorsController < ApplicationController

  def new
    @items = items
  end

  def show
    @opponent_item = items.sample
    @my_item = params[:id]
    @result = result
  end

  private

  def items
    'rock paper scissors'.split
  end

  def result
    return "tie" if @my_item == @opponent_item
    if ( (@my_item == 'rock' && @opponent_item == 'scissors') ||
         (@my_item == 'paper' && @opponent_item == 'rock') ||
         (@my_item == 'scissors' && @opponent_item == 'paper') )
         return 'win'
    else
      return 'lose'
    end
  end

end
