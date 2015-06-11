class ReviewsController < ApplicationController
  def new
    @review = Review.new do |review|
      review.movie_id  = params[:movie_id]
    end
  end

  def create
    @review = Review.create(review_params)
    if @review.save
      redirect_to movie_path(@review.movie)
    else
      render 'new'
    end
  #  redirect_to movie_path(@review.movie)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content, :movie_id)
  end

end
