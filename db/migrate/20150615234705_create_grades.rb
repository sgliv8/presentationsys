class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :group
      t.string :project
      t.string :opport
      t.text :opport_c
      t.string :cost
      t.text :cost_c
      t.string :timeline
      t.text :timeline_c
      t.string :obstacle
      t.text :obstacle_c
      t.string :risk
      t.text :risk_c
      t.string :point
      t.text :point_c
      t.string :fund
      t.text :fund_c
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :grades, :users
  end
end
