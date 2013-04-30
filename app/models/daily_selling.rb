class DailySelling < ActiveRecord::Base
  attr_accessible :price_per_quantity, :product_id, :quantity, :sold_to, :total_amount
end
