class AddG8ToGrades < ActiveRecord::Migration
  def change
    add_column :grades, :g8, :string
    add_column :grades, :g8_c, :text
    add_column :grades, :g9, :string
    add_column :grades, :g9_c, :text
    add_column :grades, :g10, :string
    add_column :grades, :g10_c, :text
    add_column :grades, :g11, :string
    add_column :grades, :g11_c, :text
    add_column :grades, :g12, :string
    add_column :grades, :g12_c, :text
    add_column :grades, :g13, :string
    add_column :grades, :g13_c, :text
    add_column :grades, :g14, :string
    add_column :grades, :g14_c, :text
    add_column :grades, :g15, :string
    add_column :grades, :g15_c, :text
    add_column :grades, :g16, :string
    add_column :grades, :g16_c, :text
    add_column :grades, :g17, :string
    add_column :grades, :g17_c, :text
    add_column :grades, :g18, :string
    add_column :grades, :g18_c, :text
    add_column :grades, :g19, :string
    add_column :grades, :g19_c, :text
    add_column :grades, :g20, :string
    add_column :grades, :g20_c, :text
  end
end
