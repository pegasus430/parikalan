class CreatePlanPayments < ActiveRecord::Migration[5.1]
  def change
    create_table :plan_payments do |t|
      t.string :full_name
      t.string :phone_number
      t.string :email_address
      t.string :purchased_item
      t.string :code
      t.string :amount_paid
      t.string :discount_amount
      t.string :payment_ref

      t.timestamps
    end
  end
end
