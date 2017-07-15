class AddCatagoryIdToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :catagory_id, :integer
  end
end
