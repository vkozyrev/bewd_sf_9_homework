class RpsGamesController < ApplicationController
  def new
    @choices = choices
  end

  def show
    @computer_guess = choices.sample
    #@player_pick = params[:id].to_i
    @player_pick = choices[params[:id].to_i]
    @winner = is_winner?
  end


  private
  def choices
    [{number: 0, image_link: "rock_paper_scissors/rock.jpg"}, {number: 1, image_link: "rock_paper_scissors/paper.jpg"}, {number: 2, image_link: "rock_paper_scissors/scissors.jpg"}]
  end

  # def is_winner?
  #   if @computer_guess == @player_pick
  #     "win"
  #   else
  #     "lose"
  #   end
  # end

  def is_winner?
    if @player_pick[:number] == 0
      if @computer_guess[:number] == 0
        "tie"
      elsif @computer_guess[:number] == 1
        "lose"
      elsif @computer_guess[:number] == 2
        'win'
      end
    elsif @player_pick[:number] == 1
      if @computer_guess[:number] == 0
        "win"
      elsif @computer_guess[:number] == 1
        "tie"
      elsif @computer_guess[:number] == 2
        "lose"
      end
    elsif @player_pick[:number] == 2
      if @computer_guess[:number] == 0
        "lose"
      elsif @computer_guess[:number] == 1
        "win"
      elsif @computer_guess[:number] == 2
        "tie"
      end
    end
  end




end
