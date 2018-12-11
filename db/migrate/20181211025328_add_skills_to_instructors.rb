class AddSkillsToInstructors < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :skills, :text
  end
end
