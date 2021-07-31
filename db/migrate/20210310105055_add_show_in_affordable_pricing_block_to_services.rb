class AddShowInAffordablePricingBlockToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :show_in_affordable_pricing_block, :boolean
  end
end
