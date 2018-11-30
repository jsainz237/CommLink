class AddComment2ToRatings < ActiveRecord::Migration[5.2]
  def change
    add_column :ratings, :comment2, :text
  end
end
