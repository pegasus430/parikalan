class CreatePolicyPages < ActiveRecord::Migration[5.1]
  def change
    create_table :policy_pages do |t|
      t.string :title
      t.string :header_image
      t.text :policy_body

      t.string :seo_title
      t.string :seo_keyword
      t.string :seo_description
      t.string :url_slug

      t.timestamps
    end
  end
end
