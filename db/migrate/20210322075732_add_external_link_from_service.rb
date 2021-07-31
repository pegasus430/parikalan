class AddExternalLinkFromService < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :external_lexternal_link, :string
  end
end
