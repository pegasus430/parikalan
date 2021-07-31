class CreateFasaiRegistrationInquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :fasai_registration_inquiries do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :nature_of_business
      t.string :expected_turnover
      t.string :business_address
      t.string :business_name
      t.string :pincode
      t.string :business_entity
      t.string :registration_tenure

      t.timestamps
    end
  end
end
