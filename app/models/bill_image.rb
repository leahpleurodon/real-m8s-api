class BillImage < ApplicationRecord
  belongs_to :house_bill
  mount_uploader :image, BillImageUploader
end
