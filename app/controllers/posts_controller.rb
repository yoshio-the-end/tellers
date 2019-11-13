class PostsController < ApplicationController

  def index
    @posts = Post.includes(:user, :category).order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to action: :index
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post_path(post.id)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :text, :category_id).merge(user_id: current_user.id)
  end

end
