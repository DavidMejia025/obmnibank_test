class CreateParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :participants do |t|
      t.string :name
      t.string :gender
      t.string :country
      t.date   :date_of_birth
      t.string :partner
      t.string :rol
      t.text   :bio

      t.timestamps
    end
  end
end
