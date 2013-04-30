class CreateDailySellings < ActiveRecord::Migration
  def change
    create_table :daily_sellings do |t|
      t.integer :product_id
      t.integer :quantity
      t.decimal :price_per_quantity,   :precision => 10 ,  :scale => 2
      t.string :sold_to
      t.decimal :total_amount,   :precision => 10 ,  :scale => 2

      t.timestamps
    end
  end
end
