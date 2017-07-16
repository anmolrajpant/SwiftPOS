class ChangeStockFormatInMyProducts < ActiveRecord::Migration[5.0]
  def up
  	change_column :products, :stock, :decimal
  end

  def down
  	change_column :products, :stock, :integer
  end
end
