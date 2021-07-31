class AddServiceFromPricePlan < ActiveRecord::Migration[5.1]
  def change
    add_reference :price_plans, :service, foreign_key: true
  end
end
