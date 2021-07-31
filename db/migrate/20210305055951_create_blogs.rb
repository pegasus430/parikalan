class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :image
      t.string :name
      t.string :date
      t.string :short_description
      t.text :long_description
      t.references :blog_category, foreign_key: true
      t.boolean :show_on_homepage
      t.string :url_slug
      t.string :seo_title
      t.string :seo_keyword
      t.string :seo_description

      t.timestamps
    end
  end
end
