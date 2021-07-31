class AddShowInAffordablePricingBlockToServiceCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :service_categories, :show_in_affordable_pricing_block, :boolean
  end
end
