class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.integer :discount
      t.integer :vat
      t.integer :totalAmt

      t.timestamps
    end
  end
end
