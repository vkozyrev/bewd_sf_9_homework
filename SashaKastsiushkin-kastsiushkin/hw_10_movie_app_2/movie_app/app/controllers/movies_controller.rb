class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
    if @movie.save
      redirect_to movies_path
    else
      render "new"
    end
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
    get_movie.reviews.destroy_all
    get_movie.destroy
    flash[:success] = "Movie successfully deleted along with its reviews"
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
