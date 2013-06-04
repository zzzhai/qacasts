class Article < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  attr_accessible :content, :desc, :level, :name, :point_ids, :tag_ids, :user_id, :category_id
  has_and_belongs_to_many :points
  has_and_belongs_to_many :tags
end
