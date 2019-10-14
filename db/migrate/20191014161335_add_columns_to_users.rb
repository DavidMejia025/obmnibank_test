class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def self.up
    add_column :users, :name, :string
    add_column :users, :country, :string
    add_column :users, :age, :integer
    add_column :users, :score, :integer
  end

  def self.down
    remove_column :users, :name, :string
    remove_column :users, :country, :string
    remove_column :users, :age, :integer
    remove_column :users, :score, :integer
  end 
end
