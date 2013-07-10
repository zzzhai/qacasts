class FollowsController < ApplicationController
  def star
    @article = Article.find(params[:id])
    @star=current_user.follows.build(:follow_id => params[:id], :follow_type => :article)
    if @star.save
      redirect_to articles_path, :flash => {:notice => t('article.star_successfully', :article => @article.name)}
    else
      redirect_to articles_path, :flash => {:errors => @star}
    end
  end

  def unstar
    @article = Article.find(params[:id])
    @unstar=Follow.where(:user_id => current_user.id, :follow_id => params[:id], :follow_type => :article).first
    if @unstar.delete
      redirect_to articles_path, :flash => {:notice => t('article.unstar_successfully', :article => @article.name)}
    else
      redirect_to articles_path, :flash => {:errors => @star}
    end
  end

  def stars
    @articles_id = Follow.where(:user_id => current_user.id, :follow_type => :article).map(&:follow_id)
    @articles = Article.where('id in (?)', @articles_id)
    @categories = Category.all
  end

  def follow
    @user = User.find(params[:id])
    @follow=current_user.follows.build(:follow_id => params[:id], :follow_type => :user)
    if @follow.save
      redirect_to articles_path, :flash => {:notice => t('user.follow_successfully', :user => @user.name)}
    else
      redirect_to articles_path, :flash => {:errors => @follow}
    end
  end

  def unfollow
    @user = User.find(params[:id])
    @unfollow=Follow.where(:user_id => current_user.id, :follow_id => params[:id], :follow_type => :user).first
    if @unfollow.delete
      redirect_to articles_path, :flash => {:notice => t('user.unfollow_successfully', :user => @user.name)}
    else
      redirect_to articles_path, :flash => {:errors => @unfollow}
    end
  end

  def follows
    @users_id = Follow.where(:user_id => current_user.id, :follow_type => :user).map(&:follow_id)
    @users = User.where('id in (?)', @users_id)
    @categories = Category.all
  end

end
