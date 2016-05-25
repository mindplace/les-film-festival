class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.review =
    # I need to figure out how I'm going to get the review information so I can assign the comment

  end

  def comment_params
    self.require(:comment).permit(:body)
  end

end