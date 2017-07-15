class RemoveProductIdFromCatagories < ActiveRecord::Migration[5.0]
  def change
    remove_column :catagories, :product_id, :integer
  end
end
