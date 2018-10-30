class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :number
      t.text :description
      t.text :instructor

      t.timestamps
    end
  end
end
