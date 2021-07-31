class AddExternalWebsiteLinkFromService < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :external_website_link, :string
  end
end
