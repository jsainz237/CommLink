class AddTitleToInstructors < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :title, :string
  end
end
