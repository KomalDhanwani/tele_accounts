class Product < ActiveRecord::Base
  attr_accessible :name, :price, :selling_price, :quantity, :stocked_on, :photo
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  just_define_datetime_picker :stocked_on, :add_to_attr_accessible => true
end
