class AddTopBarContentToGeneralSettings < ActiveRecord::Migration[5.1]
  def change
    add_column :general_settings, :top_bar_content, :text
  end
end
