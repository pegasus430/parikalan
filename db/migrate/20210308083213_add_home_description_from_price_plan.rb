class AddHomeDescriptionFromPricePlan < ActiveRecord::Migration[5.1]
  def change
    add_column :price_plans, :home_description, :text
  end
end
