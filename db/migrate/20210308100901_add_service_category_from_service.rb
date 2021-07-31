class AddServiceCategoryFromService < ActiveRecord::Migration[5.1]
  def change
    add_reference :services, :service_category, foreign_key: true
  end
end
