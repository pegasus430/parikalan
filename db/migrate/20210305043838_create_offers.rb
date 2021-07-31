class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.string :image
      t.string :title
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
