class AddSeoTitleAndSeoDescriptionAndSeoKeywordToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :seo_title, :string
    add_column :services, :seo_description, :string
    add_column :services, :seo_keyword, :string
  end
end
