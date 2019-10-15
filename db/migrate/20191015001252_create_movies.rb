class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string  :name
      t.string  :country
      t.string  :genres
      t.date    :release
      t.integer :score
      t.integer :duration_min
      t.string  :image
      t.text    :synopsis

      t.timestamps
    end
  end
end