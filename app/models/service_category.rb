class ServiceCategory < ApplicationRecord
  has_many :services
  has_many :service_sub_categories

  def menu_column_size
  	return 12 if service_sub_categories.count == 1
  	return 6 if service_sub_categories.count == 2
  	return 4 if service_sub_categories.count == 3
  	return 3 if service_sub_categories.count == 4
  end

end
