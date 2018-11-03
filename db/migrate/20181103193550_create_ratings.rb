class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.int :rating
      t.text :comment

      t.timestamps
    end
  end
end
