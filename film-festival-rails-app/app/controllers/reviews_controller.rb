class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    @categories = Category.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.movie = Movie.find_by(id: params[:movie_id])

    if @review.save
      redirect_to movie_path(@review.movie)
    else
      render 'new'
    end
  end

  def show
  end

  private
  def review_params
    params.require(:review).permit(:description, :stars)
  end
end