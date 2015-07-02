class AddCourseToGrade < ActiveRecord::Migration
  def change
    add_reference :grades, :course, index: true
    add_foreign_key :grades, :courses
  end
end
