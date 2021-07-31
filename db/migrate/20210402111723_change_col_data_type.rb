class ChangeColDataType < ActiveRecord::Migration[5.1]
  def change
  	change_column :price_plans, :price, :integer
  end
end
