class Product < ActiveRecord::Base
  attr_accessible :name, :price, :selling_price, :quantity, :stocked_on, :photo
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  just_define_datetime_picker :stocked_on, :add_to_attr_accessible => true
  include Rails.application.routes.url_helpers

  validates :name, :price, :selling_price, :quantity, :presence => true
  def to_jq_upload
    {
      "name" => photo_file_name,
      "size" => photo.size,
      "url" => "http://localhost:3005#{photo.url}",
      "thumbnail_url" => "http://localhost:3005#{photo.url(:thumb)}",
      "delete_url" => product_path(:id => id),
      "delete_type" => "DELETE"
    }
  end

  def inc_qty(qty)
    increment!(:quantity, qty)
  end

  def dec_qty(qty)
    decrement!(:quantity, qty)
  end

end
