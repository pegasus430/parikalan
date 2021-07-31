class CreateAboutPages < ActiveRecord::Migration[5.1]
  def change
    create_table :about_pages do |t|
      t.string :header_image
      t.string :header_title
      t.string :about_section_image
      t.string :about_section_title
      t.string :about_section_subtitle
      t.text :about_section_description
      t.string :usp_icon_1
      t.string :usp_title_1
      t.string :usp_description_1
      t.string :usp_icon_2
      t.string :usp_title_2
      t.string :usp_description_2
      t.string :usp_icon_3
      t.string :usp_title_3
      t.string :usp_description_3
      t.string :history_section_title
      t.string :history_section_subtitle
      t.string :seo_title
      t.string :seo_keyword
      t.string :seo_description

      t.timestamps
    end
  end
end
