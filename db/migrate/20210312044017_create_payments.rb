class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.references :service, foreign_key: true
      t.references :price_plan, foreign_key: true
      t.string :payment_ref
      t.integer :amount
      t.string :name
      t.string :phone
      t.string :email
      t.references :cupon_code, foreign_key: true

      t.timestamps
    end
  end
end
