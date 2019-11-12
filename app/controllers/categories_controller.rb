class CategoriesController < ApplicationController

  def index
    @categories = Category.includes(:post)
  end
end
