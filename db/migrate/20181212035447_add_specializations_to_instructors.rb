class AddSpecializationsToInstructors < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :specializations, :text
  end
end
