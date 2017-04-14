class AddCatagoryToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :Catagory, :string
  end
end
