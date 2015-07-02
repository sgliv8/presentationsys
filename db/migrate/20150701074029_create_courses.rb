class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_name
      t.text :cq1
      t.text :cq2
      t.text :cq3
      t.text :cq4
      t.text :gq1
      t.text :gq2
      t.text :gq3
      t.text :gq4
      t.text :gq5
      t.text :gq6
      t.text :gq7

      t.timestamps null: false
    end
  end
end
