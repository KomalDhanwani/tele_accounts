ActiveAdmin.register Product do

  form do |f|
    f.inputs do
      f.input :stocked_on, :as => :just_datetime_picker
      f.input :name
      f.input :price
      f.input :selling_price
      f.input :quantity
      f.input :photo
    end

    f.buttons
  end
end
