class CreateHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :histories do |t|
      t.string :date
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
