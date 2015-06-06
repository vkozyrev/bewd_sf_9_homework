class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = find_movie
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
    @movie.save
    redirect_to movies_path
  end
  
  def edit
    @movie = find_movie
  end

  def update
    @movie = find_movie
    @movie.update_attributes(movie_params)
    redirect_to movie_path(@movie)
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :date_released, :description)
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end

end
