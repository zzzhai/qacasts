class Tag < ActiveRecord::Base
  attr_accessible :name, :article_ids
  has_and_belongs_to_many :articles
  validates :name, :presence => true, :length => {:maximum => 8}, :allow_blank => false
end
