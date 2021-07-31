class AddCustomFormPricingToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :custom_form_pricing, :integer
  end
end
