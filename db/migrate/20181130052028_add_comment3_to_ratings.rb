class AddComment3ToRatings < ActiveRecord::Migration[5.2]
  def change
    add_column :ratings, :comment3, :text
  end
end
