class CreateInventories < ActiveRecord::Migration[5.0]
  def change
    create_table :inventories do |t|
      t.string :itemName
      t.integer :itemQuantity
      t.text :itemDesc
      t.text :itemCatagory
      t.integer :itemPrice

      t.timestamps
    end
  end
end
