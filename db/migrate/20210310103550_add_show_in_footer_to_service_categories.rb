class AddShowInFooterToServiceCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :service_categories, :show_in_footer, :boolean
  end
end
