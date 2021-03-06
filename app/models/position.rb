class Position < ActiveRecord::Base
  attr_accessible :desc, :name, :point_ids
  has_and_belongs_to_many :points
  validates :name, :presence => true, :length => {:maximum => 12}, :allow_blank => false
  validates :desc, :presence => true, :length => {:maximum => 80}, :allow_blank => false
end
