class ArticleContent < ActiveRecord::Base
  belongs_to :article
  attr_accessible :content, :article_id
  validates :content, :presence => true, :allow_blank => false
end
