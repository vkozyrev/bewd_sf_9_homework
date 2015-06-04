class RockPaperScissorsController < ApplicationController

  def new
    @throws = get_throw
  end

  def show
    @throws = get_throw
    @app_throw = get_throw.sample
    @user_throw = @throws[params[:id].to_i]
    @outcome = play_game
  end

  private

  def get_throw
    ["rock", "paper", "scissors"]
  end

  def play_game
    @beats = {
      "rock" => "scissors",
      "scissors" => "paper",
      "paper" => "rock"
    }

    if @user_throw == @app_throw
      "tie"
    elsif @beats[@user_throw] == @app_throw
      "win"
    else
      "lose"
    end
  end


  end
