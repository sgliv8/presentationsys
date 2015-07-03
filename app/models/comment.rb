class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :course

  validates_presence_of :group
  validates_presence_of :project
  validates_presence_of :strength
  validates_presence_of :weakness 
  validates_presence_of :improvement
  validates_presence_of :fund
  validates_presence_of :course_id
end
