class PostsController < ApplicationController
  def index
    @posts = Post.all
    render json: {posts: @posts}
  end

  def show
    @post= Post.find(params[:id])
    @comments = Comment.where(post_id: @post.id)
    render json: {post: @post, comments: @comments}
  end
end
