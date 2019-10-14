class CreateMoviesParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :movies_participants do |t|
      t.belongs_to :movie
      t.belongs_to :user
    end
  end
end