class AddOfficeToInstructors < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :office, :string
  end
end
