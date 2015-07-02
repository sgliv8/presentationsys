class Course < ActiveRecord::Base
  has_many :comments
  has_many :grades
end
