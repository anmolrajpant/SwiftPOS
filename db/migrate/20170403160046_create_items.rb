class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.belongs_to :product, foreign_key: true
      t.belongs_to :sale, foreign_key: true
      t.decimal :quantity
      t.decimal :total

      t.timestamps
    end
  end
end
