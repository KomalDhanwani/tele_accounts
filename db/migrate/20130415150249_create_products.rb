class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.decimal :price,   :precision => 10 ,  :scale => 2
      t.decimal :selling_price,   :precision => 10 ,  :scale => 2
      t.string :name
      t.integer :quantity
      t.datetime :stocked_on


      t.timestamps
    end
    add_index :products, :name, :length => 20
  end
end
