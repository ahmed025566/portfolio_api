class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      render json: {status: 200}
    else
      render json: {status: 422, errors: @comment.errors.full_messages}
    end
  end

  def comment_params
    params.require(:comment).permit(:commentBody, :name, :email, :post_id)
  end
end
