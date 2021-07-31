class CreateHomePagePopups < ActiveRecord::Migration[5.1]
  def change
    create_table :home_page_popups do |t|
      t.string :title
      t.string :sub_title
      t.string :promo_code

      t.timestamps
    end
  end
end
