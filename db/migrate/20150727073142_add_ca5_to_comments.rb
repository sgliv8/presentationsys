class AddCa5ToComments < ActiveRecord::Migration
  def change
    add_column :comments, :ca5, :text
    add_column :comments, :ca6, :text
    add_column :comments, :ca7, :text
    add_column :comments, :ca8, :text
    add_column :comments, :ca9, :text
    add_column :comments, :ca10, :text
  end
end
