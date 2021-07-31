class AddOverviewTitleFromService < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :overview_title, :string
    add_column :services, :benefit_title, :string
    add_column :services, :how_to_register_title, :string
    add_column :services, :document_register_title, :string
    add_column :services, :how_we_help_title, :string
    add_column :services, :faq_title, :string
  end
end
