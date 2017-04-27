class AddSaleIdToReport < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :sale_id, :integer
  end
end
