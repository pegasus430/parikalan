class CreateStats < ActiveRecord::Migration[5.1]
  def change
    create_table :stats do |t|
      t.string :icon_1
      t.string :title_1
      t.integer :number_1
      t.string :icon_2
      t.string :title_2
      t.integer :number_2
      t.string :icon_3
      t.string :title_3
      t.integer :number_3

      t.timestamps
    end
  end
end
