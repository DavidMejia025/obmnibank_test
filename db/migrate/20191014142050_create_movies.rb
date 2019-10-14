 class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string  :name
      t.string  :country
      t.date    :release
      t.integer :score
      t.string  :status
      t.text    :synopsis

      t.timestamps
    end
  end
end
