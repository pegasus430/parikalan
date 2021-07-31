class CreateOfferInquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :offer_inquiries do |t|
      t.string :name
      t.string :phone
      t.string :email

      t.string :payment_ref
      t.integer :amount

      t.references :offer, foreign_key: true

      t.timestamps
    end
  end
end
