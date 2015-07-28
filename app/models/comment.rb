class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :course

  validates_presence_of :group, :message => "Group number is required."
  validates_presence_of :project, :message => "Project name is required."
end
