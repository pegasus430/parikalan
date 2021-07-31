class CreateServicePages < ActiveRecord::Migration[5.1]
  def change
    create_table :service_pages do |t|
      t.string :header_image
      t.string :header_title
      t.string :icon_1
      t.string :number_1
      t.string :title_1
      t.string :icon_2
      t.string :number_2
      t.string :title_2
      t.string :icon_3
      t.string :number_3
      t.string :title_3
      t.string :seo_title
      t.string :seo_keyword
      t.string :seo_description

      t.timestamps
    end
  end
end
