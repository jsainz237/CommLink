class AddEducationToInstructors < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :education, :text
  end
end
