class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    @categories = Category.all
  end

  def new
  end

  def create
  end

  def show
  end

end