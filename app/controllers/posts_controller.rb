class PostsController < ApplicationController
  def index
    @posts = Article.all
    render json: { posts: @posts }
  end

  def show
    @post = Article.find(params[:id])
    @category = Category.find(@post.category_id).name
    @comments = @post.comments
    
    render json: { post: @post, category: @category , comments: @comments }
  end
end
