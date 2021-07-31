class CreateContactPages < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_pages do |t|
      t.string :header_image
      t.string :header_title
      t.string :contact_section_title
      t.string :contact_section_subtitle
      t.string :form_section_title
      t.string :seo_title
      t.string :seo_keyword
      t.string :seo_description

      t.timestamps
    end
  end
end
