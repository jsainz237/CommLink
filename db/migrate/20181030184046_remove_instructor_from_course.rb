class RemoveInstructorFromCourse < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :instructor, :text
  end
end
