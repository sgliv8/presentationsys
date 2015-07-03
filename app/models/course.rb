class Course < ActiveRecord::Base
  has_many :comments
  has_many :grades


  validates_presence_of :course_name, :message => "Course name is required."
  validates_presence_of :cq1, :message => "Comment Question1 is required."
  validates_presence_of :cq2, :message => "Comment Question2 is required."
  validates_presence_of :cq3, :message => "Comment Question3 is required."
  validates_presence_of :cq4, :message => "Comment Question4 is required."
  validates_presence_of :gq1, :message => "Grade Question1 is required."
  validates_presence_of :gq2, :message => "Grade Question2 is required."
  validates_presence_of :gq3, :message => "Grade Question3 is required."
  validates_presence_of :gq4, :message => "Grade Question4 is required."
  validates_presence_of :gq5, :message => "Grade Question5 is required."
  validates_presence_of :gq6, :message => "Grade Question6 is required."
  validates_presence_of :gq7, :message => "Grade Question7 is required."

end
