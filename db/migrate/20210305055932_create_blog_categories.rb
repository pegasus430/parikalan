class CreateBlogCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_categories do |t|
      t.string :image
      t.string :name
      t.string :url_slug

      t.timestamps
    end
  end
end
