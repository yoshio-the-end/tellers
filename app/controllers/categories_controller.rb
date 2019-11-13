class CategoriesController < ApplicationController

  def index
    @categories = Category.includes(:user, :post).order("created_at DESC")
  end

  def show
    @categories = Category.find(params[:id])
    @posts = @categories.posts.order("created_at DESC")
  end
end
