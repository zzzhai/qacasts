class Follow < ActiveRecord::Base
  belongs_to :user
  validates_uniqueness_of :follow_id, :scope => [:user_id, :follow_type]
  attr_accessible :follow_id, :follow_type, :user_id
end
