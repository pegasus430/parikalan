class ServiceSubCategory < ApplicationRecord
  belongs_to :service_category
  mount_uploader :menu_icon, IconUploader
  has_many :services
end
