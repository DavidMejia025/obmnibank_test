class CreateRecomendations < ActiveRecord::Migration[5.2]
  def change
    create_table :recomendations do |t|
      t.integer  :movie_id
      t.integer  :user_id
      t.string   :title
      t.text     :description
      t.integer  :likes

      t.timestamps
    end
  end
end
