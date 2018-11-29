class AddCourseIdToRating < ActiveRecord::Migration[5.2]
  def change
    add_column :ratings, :course_id, :integer
  end
end
