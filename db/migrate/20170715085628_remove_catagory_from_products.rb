class RemoveCatagoryFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :Catagory, :string
  end
end
