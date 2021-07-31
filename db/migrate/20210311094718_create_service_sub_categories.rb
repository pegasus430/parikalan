class CreateServiceSubCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :service_sub_categories do |t|
      t.string :name
      t.string :menu_icon
      t.references :service_category, foreign_key: true

      t.timestamps
    end
  end
end
