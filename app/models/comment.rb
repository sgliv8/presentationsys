class Comment < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :group
  validates_presence_of :project
  validates_presence_of :strength
  validates_presence_of :weakness 
  validates_presence_of :improvement
  validates_presence_of :fund
end
