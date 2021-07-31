class CreatePricePlanFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :price_plan_features do |t|
      t.string :title
      t.boolean :available
      t.boolean :not_available
      t.references :price_plans, foreign_key: true

      t.timestamps
    end
  end
end
