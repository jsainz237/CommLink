class AddDegreeToInstructors < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :degree, :string
  end
end
