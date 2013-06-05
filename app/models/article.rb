class Article < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  attr_accessible :content, :desc, :level, :name, :point_ids, :tag_ids, :user_id, :category_id
  has_and_belongs_to_many :points
  has_and_belongs_to_many :tags
  validates :name, :presence => true, :length => {:maximum => 12}, :allow_blank => false
  validates :desc, :presence => true, :length => {:maximum => 80}, :allow_blank => false
  validates :content, :presence => true, :allow_blank => false
  validates :level, :presence => true, :numericality => {:only_integer => true}
end
