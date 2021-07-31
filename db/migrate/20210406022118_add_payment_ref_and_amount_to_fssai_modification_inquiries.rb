class AddPaymentRefAndAmountToFssaiModificationInquiries < ActiveRecord::Migration[5.1]
  def change
    add_column :fssai_modification_inquiries, :payment_ref, :string
    add_column :fssai_modification_inquiries, :amount, :integer

    add_column :home_loan_inquiries, :payment_ref, :string
    add_column :home_loan_inquiries, :amount, :integer

    add_column :gem_registration_inquiries, :payment_ref, :string
    add_column :gem_registration_inquiries, :amount, :integer

    add_column :msme_registration_inquiries, :payment_ref, :string
    add_column :msme_registration_inquiries, :amount, :integer

    add_column :personal_loan_inquiries, :payment_ref, :string
    add_column :personal_loan_inquiries, :amount, :integer

    add_column :loan_against_property_inquiries, :payment_ref, :string
    add_column :loan_against_property_inquiries, :amount, :integer

    add_column :fasai_registration_inquiries, :payment_ref, :string
    add_column :fasai_registration_inquiries, :amount, :integer

    add_column :fssai_renewal_inquiries, :payment_ref, :string
    add_column :fssai_renewal_inquiries, :amount, :integer

  end
end
