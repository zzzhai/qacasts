class Article < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_and_belongs_to_many :points
  has_and_belongs_to_many :tags
  has_one :article_content
  attr_accessible :url, :desc, :level, :name, :point_ids, :tag_ids, :user_id, :category_id
  validates :name, :presence => true, :length => {:maximum => 12}, :allow_blank => false
  validates :desc, :presence => true, :length => {:maximum => 80}, :allow_blank => false
  validates :url, :presence => true, :length => {:maximum => 256}, :allow_blank => false
  validates_format_of :url, :with => URI::regexp(%w(http https))
  validates :level, :presence => true, :numericality => {:only_integer => true}
end
