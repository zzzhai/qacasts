class ArticlesController < ApplicationController
  before_filter :auth_user

  def index
    @articles = Article.all
    @categories = Category.all
    @flash = flash[:errors]
  end

  def show
    @article = Article.find(params[:id])
  end

  def category
    @articles = Article.where(:category_id => params[:param])
    @categories = Category.all
  end

end
