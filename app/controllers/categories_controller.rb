class CategoriesController < ApplicationController

  def index
    @categories = Category.includes(:user, :post)
  end

  def show
    @categories = Category.find(params[:id])
  end
end
