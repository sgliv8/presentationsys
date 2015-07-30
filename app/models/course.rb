class Course < ActiveRecord::Base
  has_many :comments
  has_many :grades


  validates_presence_of :course_name, :message => "Course name is required."
  

end
