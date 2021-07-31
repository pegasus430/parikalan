class CreateCuponCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :cupon_codes do |t|
      t.string :code
      t.integer :cupon_type
      t.integer :percentage_off
      t.integer :max_percentage_off_amount
      t.integer :amount_off
      t.integer :min_purchase_amount
      t.date :valid_till
      t.integer :max_number_of_clients

      t.timestamps
    end
  end
end
