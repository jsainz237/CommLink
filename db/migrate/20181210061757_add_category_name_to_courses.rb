class AddCategoryNameToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :categoryName, :string
  end
end
