class AddSpecialtyToInstructors < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :specialty, :text
  end
end
