class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @categories = Category.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def category
    @articles = Article.where(:category_id => params[:param])
    @categories = Category.all
  end
end
