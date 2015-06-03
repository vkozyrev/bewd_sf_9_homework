class RockPaperScissorsController < ApplicationController


  def new
    @computer_tools = computer_tools
  end

  def show
    @computer_tool = computer_tools.sample
    @chosen_tool = params[:id].to_i
    @winner = is_winner?
    @tie = is_tie?
  end

  private

  def computer_tools
    (1..3).to_a
  end

  def is_winner?
    @computer_tool == 1 && @chosen_tool == 3 || @computer_tool == 2 && @chosen_tool == 1 || @computer_tool == 3 && @chosen_tool == 2
  end

  def is_tie?
    @computer_tool == @chosen_tool
  end

end
