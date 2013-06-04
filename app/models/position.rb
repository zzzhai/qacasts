class Position < ActiveRecord::Base
  attr_accessible :desc, :name, :point_ids
  has_and_belongs_to_many :points
end
