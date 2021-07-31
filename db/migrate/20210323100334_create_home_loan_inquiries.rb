class CreateHomeLoanInquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :home_loan_inquiries do |t|
      t.string :loan_amount
      t.string :name
      t.string :email
      t.string :phone
      t.string :property_located
      t.string :occupation
      t.string :monthly_emi
      t.string :purpose

      t.timestamps
    end
  end
end
