class Point < ActiveRecord::Base
  attr_accessible :desc, :name, :position_ids, :article_ids
  has_and_belongs_to_many :positions
  has_and_belongs_to_many :articles
  validates :name, :presence => true, :length => {:maximum => 12}, :allow_blank => false
  validates :desc, :presence => true, :length => {:maximum => 80}, :allow_blank => false
end
