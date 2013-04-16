class Products < ActiveRecord::Base
  attr_accessible :name, :price, :selling_price, :quantity, :stocked_on, :photo
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
