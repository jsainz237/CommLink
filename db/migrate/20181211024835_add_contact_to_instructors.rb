class AddContactToInstructors < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :contact, :string
  end
end
