class CreatePersonalLoanInquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :personal_loan_inquiries do |t|
      t.string :loan_amount
      t.string :name
      t.string :email
      t.string :phone
      t.string :city
      t.string :residence_type
      t.string :occupation

      t.timestamps
    end
  end
end
