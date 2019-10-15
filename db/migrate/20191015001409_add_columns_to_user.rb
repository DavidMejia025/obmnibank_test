class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def self.up
    add_column :users, :name, :string
    add_column :users, :gender, :string
    add_column :users, :country, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :description, :text
    add_column :users, :score, :integer
  end

  def self.down
    remove_column :users, :name, :string
    remove_column :users, :gender, :string
    remove_column :users, :country, :string
    remove_column :users, :date_of_birth, :date
    remove_column :users, :description, :text
    remove_column :users, :score, :integer
  end 
end
