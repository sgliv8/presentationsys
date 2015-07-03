class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :course

  validates_presence_of :group, :message => "Group number is required."
  validates_presence_of :project, :message => "Project name is required."
  validates_presence_of :strength, :message => "Question 1 is required."
  validates_presence_of :weakness, :message => "Question 2 is required." 
  validates_presence_of :improvement, :message => "Question 3 is required."
  validates_presence_of :fund, :message => "Question 4 is required."
end
