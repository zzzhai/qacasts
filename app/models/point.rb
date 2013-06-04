class Point < ActiveRecord::Base
  attr_accessible :desc, :name, :position_ids, :article_ids
  has_and_belongs_to_many :positions
  has_and_belongs_to_many :articles
end
