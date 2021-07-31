class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :image
      t.string :name
      t.string :short_description
      t.text :long_description
      t.string :highlight_image
      t.text :overview
      t.text :benefits
      t.text :how_to_register
      t.text :document_required
      t.text :help_in_registering
      t.string :url_slug
      t.boolean :show_on_homepage

      t.timestamps
    end
  end
end
