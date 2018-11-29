class AddAvailabilityToInstructors < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :availability, :text
  end
end
