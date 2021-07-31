class CreateOfferPages < ActiveRecord::Migration[5.1]
  def change
    create_table :offer_pages do |t|
      t.string :header_title
      t.string :header_image
      t.string :seo_title
      t.string :seo_keyword
      t.string :seo_description

      t.timestamps
    end
  end
end
