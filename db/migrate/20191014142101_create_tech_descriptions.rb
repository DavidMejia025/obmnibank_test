class CreateTechDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :tech_descriptions do |t|
      t.integer :movie_id
      t.string  :sound
      t.boolean :color
      t.string  :camera
      t.string  :format
      t.integer :duration_min

      t.timestamps
    end
  end
end
