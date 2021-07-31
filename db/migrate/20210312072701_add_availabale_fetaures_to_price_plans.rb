class AddAvailabaleFetauresToPricePlans < ActiveRecord::Migration[5.1]
  def change
    add_column :price_plans, :availabale_fetaures, :text
    add_column :price_plans, :not_availabale_fetaures, :text
  end
end
