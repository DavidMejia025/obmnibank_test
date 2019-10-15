class CreateMovieStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_statuses do |t|
      t.integer :movie_id
      t.integer :user_id
      t.boolean :watch_later
      t.boolean :watched

      t.timestamps
    end
  end
end
