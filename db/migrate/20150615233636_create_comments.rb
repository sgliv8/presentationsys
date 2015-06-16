class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :group
      t.string :project
      t.text :strength
      t.text :weakness
      t.text :improvement
      t.text :fund
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :users
  end
end
