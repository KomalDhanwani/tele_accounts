class ProductStock < ActiveRecord::Base
  attr_accessible :price_per_quantity, :product_id, :purchased_from, :quantity, :total_amount
end
