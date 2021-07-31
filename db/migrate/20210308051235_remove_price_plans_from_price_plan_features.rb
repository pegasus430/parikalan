class RemovePricePlansFromPricePlanFeatures < ActiveRecord::Migration[5.1]
  def change
    remove_reference :price_plan_features, :price_plans, foreign_key: true
  end
end
