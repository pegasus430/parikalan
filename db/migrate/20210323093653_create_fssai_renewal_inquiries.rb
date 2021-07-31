class CreateFssaiRenewalInquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :fssai_renewal_inquiries do |t|
      t.string :type_of_renewal
      t.string :organization_name
      t.string :applicant_name
      t.string :email
      t.string :phone
      t.string :license_number
      t.string :tenure

      t.timestamps
    end
  end
end
