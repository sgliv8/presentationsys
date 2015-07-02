class AddCourseToComment < ActiveRecord::Migration
  def change
    add_reference :comments, :course, index: true
    add_foreign_key :comments, :courses
  end
end
