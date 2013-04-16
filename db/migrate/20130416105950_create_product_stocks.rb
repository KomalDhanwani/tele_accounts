class CreateProductStocks < ActiveRecord::Migration
  def change
    create_table :product_stocks do |t|
      t.integer :product_id
      t.integer :quantity
      t.decimal :price_per_quantity
      t.string :purchased_from
      t.decimal :total_amount

      t.timestamps
    end
  end
end
