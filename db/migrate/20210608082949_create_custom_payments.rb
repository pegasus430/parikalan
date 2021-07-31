class CreateCustomPayments < ActiveRecord::Migration[5.1]
  def change
    create_table :custom_payments do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.integer :amount_paid
      t.string :message
      t.string :payment_ref

      t.timestamps
    end
  end
end
