class CreateAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :awards do |t|
      t.integer :movie_id,        default: 0
      t.integer :participant_id,  default: 0
      t.date    :year
      t.string  :name
      t.integer :price

      t.timestamps
    end
  end
end
