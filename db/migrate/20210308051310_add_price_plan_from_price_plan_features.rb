class AddPricePlanFromPricePlanFeatures < ActiveRecord::Migration[5.1]
  def change
    add_reference :price_plan_features, :price_plan, foreign_key: true
  end
end
