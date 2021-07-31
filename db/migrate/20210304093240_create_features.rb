class CreateFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :features do |t|
      t.string :icon
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
