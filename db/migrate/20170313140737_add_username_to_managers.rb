class AddUsernameToManagers < ActiveRecord::Migration[5.0]
  def change
    add_column :managers, :username, :string
    add_index :managers, :username, unique: true
  end
end
