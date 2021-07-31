class RemoveDurationFromPricePlans < ActiveRecord::Migration[5.1]
  def change
  	# connection.execute("PRAGMA defer_foreign_keys = ON")
	  # connection.execute("PRAGMA foreign_keys = OFF")
    remove_column :price_plans, :duration, :string
    remove_column :price_plans, :show_on_homepage, :boolean
    remove_column :price_plans, :home_description, :text
	  # connection.execute("PRAGMA foreign_keys = ON")
	  # connection.execute("PRAGMA defer_foreign_keys = OFF")
  end
end
