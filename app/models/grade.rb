class Grade < ActiveRecord::Base
  belongs_to :user


  validates_presence_of :group
  validates_presence_of :project
  validates_presence_of :opport
  validates_presence_of :cost 
  validates_presence_of :timeline
  validates_presence_of :obstacle
  validates_presence_of :risk
  validates_presence_of :point
  validates_presence_of :fund
  validates_presence_of :totalscore
end
