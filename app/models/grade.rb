class Grade < ActiveRecord::Base
  belongs_to :user
  belongs_to :course


  validates_presence_of :group, :message => "Group number is required."
  validates_presence_of :project, :message => "Project name is required."
  validates_presence_of :opport, :message => "Question a is required."
  validates_presence_of :cost, :message => "Question b is required." 
  validates_presence_of :timeline, :message => "Question c is required." 
  validates_presence_of :obstacle, :message => "Question d is required." 
  validates_presence_of :risk, :message => "Question e is required." 
  validates_presence_of :point, :message => "Question f is required." 
  validates_presence_of :fund, :message => "Question g is required." 
  validates_presence_of :totalscore, :message => "Final grade is required." 
  # validates_presence_of :course_id, :message => "Course number is required."
end
