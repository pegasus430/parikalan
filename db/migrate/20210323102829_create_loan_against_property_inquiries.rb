class CreateLoanAgainstPropertyInquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :loan_against_property_inquiries do |t|
      t.string :loan_amount
      t.string :name
      t.string :email
      t.string :phone
      t.string :property_located
      t.string :type_of_property
      t.string :property_value
      t.string :occupation
      t.string :monthly_emi

      t.timestamps
    end
  end
end
