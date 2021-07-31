class CreateServiceCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :service_categories do |t|
      t.string :name
      t.string :url_slug

      t.timestamps
    end
  end
end
