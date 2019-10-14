class AddColumnToRecomendations < ActiveRecord::Migration[5.2]
  def change
    add_column :recomendations, :user_id, :integer
  end
end
