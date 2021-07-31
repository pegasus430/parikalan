class CreateBlogPages < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_pages do |t|
      t.string :header_image
      t.string :header_title
      t.string :seo_title
      t.string :seo_keyword
      t.string :seo_description

      t.timestamps
    end
  end
end
