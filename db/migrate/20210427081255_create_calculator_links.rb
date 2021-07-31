class CreateCalculatorLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :calculator_links do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
