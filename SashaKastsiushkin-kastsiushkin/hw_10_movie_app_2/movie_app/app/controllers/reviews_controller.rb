class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new do |review|
      review.movie_id = params[:movie_id]
    end
  end

  def create
    @review = Review.create(review_params)
    if @review.save
      redirect_to movie_path(@review.movie)
    else
      render "new"
    end
  end

  def edit
    @review = get_review
  end

  def update
    @review = get_review
    if @review.update_attributes(review_params)
      flash[:success] = "Review updated"
      redirect_to movie_path(@review.movie)
    else
      render "edit"
    end
  end

  def show
  end

  def destroy
    get_review.destroy
    flash[:success] = "Review deleted"
    redirect_to(:back)
  end

  private
  def get_review
    Review.find(params[:id])
  end
  def review_params
    params.require(:review).permit(:rating, :review, :movie_id)
  end
end
