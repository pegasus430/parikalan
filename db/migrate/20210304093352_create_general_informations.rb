class CreateGeneralInformations < ActiveRecord::Migration[5.1]
  def change
    create_table :general_informations do |t|
      t.string :header_logo
      t.string :footer_logo
      t.text :disclaimer
      t.string :address_line_1
      t.string :address_line_2
      t.string :phone
      t.string :email
      t.string :facebook_page
      t.string :instagram_page
      t.string :twiiter_page
      t.string :linkedin_page
      t.string :map_url

      t.timestamps
    end
  end
end
