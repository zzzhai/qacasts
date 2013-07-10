class FollowsController < ApplicationController
  def star
    @article = Article.find(params[:follow_id])
    @star=current_user.follows.build(:follow_id => params[:follow_id], :follow_type => :article)
    if @star.save
      redirect_to articles_path, :flash => {:notice => t('article.star_successfully', :article => @article.name)}
    else
      redirect_to articles_path, :flash => {:errors => @star}
    end
  end

  def unstar
    @article = Article.find(params[:follow_id])
    @unstar=Follow.where(:user_id => current_user.id, :follow_id => params[:follow_id], :follow_type => :article).first
    if @unstar.delete
      redirect_to articles_path, :flash => {:notice => t('article.unstar_successfully', :article => @article.name)}
    else
      redirect_to articles_path, :flash => {:errors => @star}
    end
  end
end
