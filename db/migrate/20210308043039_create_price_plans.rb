class CreatePricePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :price_plans do |t|
      t.string :name
      t.string :price
      t.string :duration
      t.boolean :show_on_homepage

      t.timestamps
    end
  end
end
