class CreateHomePages < ActiveRecord::Migration[5.1]
  def change
    create_table :home_pages do |t|
      t.string :banner_image
      t.string :banner_title
      t.string :banner_subtitle
      t.string :about_section_image
      t.string :about_section_title
      t.string :about_section_subtitle
      t.text :about_section_description
      t.string :price_section_title
      t.string :price_section_subtitle
      t.string :price_section_background_image
      t.string :why_us_section_title
      t.text :why_us_section_description
      t.string :usp_image_1
      t.string :usp_icon_1
      t.string :usp_title_1
      t.string :usp_subtitle_1
      t.string :usp_image_2
      t.string :usp_icon_2
      t.string :usp_title_2
      t.string :usp_subtitle_2
      t.string :usp_image_3
      t.string :usp_icon_3
      t.string :usp_title_3
      t.string :usp_subtitle_3
      t.string :usp_image_4
      t.string :usp_icon_4
      t.string :usp_title_4
      t.string :usp_subtitle_4
      t.string :testimonial_section_title
      t.string :testimonial_section_subtitle
      t.string :seo_title
      t.string :seo_keyword
      t.string :seo_description

      t.timestamps
    end
  end
end
