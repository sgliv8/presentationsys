class AddTotalscoreToGrades < ActiveRecord::Migration
  def change
    add_column :grades, :totalscore, :string
  end
end
