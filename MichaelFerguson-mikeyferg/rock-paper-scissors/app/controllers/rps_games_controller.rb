class RpsGamesController < ApplicationController
  def new
  @computer_guesses = computer_guesses

  end

  def show
    @computer_guess = computer_guesses.sample
    @player_pick = params[:id].to_i
    @winner = is_winner?
  end


  # def image(number)
  #   if number == 0
  #     link_to image_tag("rock_paper_scissors/rock.jpg"), rps_game_path(number)
  #   elsif number == 1
  #     link_to image_tag("rock_paper_scissors/paper.jpg"), rps_game_path(number)
  #   elsif number == 2
  #     link_to image_tag("rock_paper_scissors/scissors.jpg"), rps_game_path(number)
  #   end
  # end

  private

  def computer_guesses
    (0..2).to_a
  end

  def is_winner?
    @computer_guess == @player_pick
  end
end
