class CreateGemRegistrationInquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :gem_registration_inquiries do |t|
      t.string :name_of_business_firm
      t.string :address_of_business_firm
      t.string :nature_business_firm
      t.string :services_to_be_sell_in_gem
      t.string :owner_name
      t.string :owner_aadhar_number
      t.string :type_of_firm
      t.string :email
      t.string :phone
      t.string :account_holder_name
      t.string :account_number
      t.string :ifsc_code
      t.string :date
      t.string :income_tax_return

      t.timestamps
    end
  end
end
