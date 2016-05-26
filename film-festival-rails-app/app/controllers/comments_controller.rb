class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.review = Review.find_by(id: params[:review_id])
    # I need to figure out how I'm going to get the review information so I can assign the comment

    if @comment.save
      redirect_to movie_path(@comment.review.movie)
    else
      render 'new'
    end

  end

  def comment_params
    params.require(:comment).permit(:body)
  end

end