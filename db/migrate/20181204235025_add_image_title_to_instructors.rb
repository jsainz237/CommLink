class AddImageTitleToInstructors < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :imageTitle, :string
  end
end
