class MoviesController < ApplicationController
  def index
    @movies = Movie.all.order( 'movies.date_released DESC' )
  end

  def new
    @movie = Movie.new
  end

  def create
    Movie.create(movie_params)
    redirect_to movies_path
  end

  def show
    @movie = get_movie
  end

  def edit
    @movie = get_movie
  end

  def update
    @movie = get_movie
    if @movie.update_attributes(movie_params)
      flash[:success] = "Profile updated"
      redirect_to movies_path
    else
      render 'edit'
    end
  end

  def destroy
    get_movie.destroy
    flash[:success] = "User deleted"
    redirect_to movies_path
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :date_released, :description)
  end

  def get_movie
    Movie.find(params[:id])
  end

end
