class AddRecapthaHumanityScoreToServiceInqueries < ActiveRecord::Migration[5.1]
  def change
    add_column :service_inqueries, :recaptha_humanity_score, :float
    add_column :payments, :recaptha_humanity_score, :float
    add_column :offer_inquiries, :recaptha_humanity_score, :float
    add_column :fasai_registration_inquiries, :recaptha_humanity_score, :float
    add_column :fssai_renewal_inquiries, :recaptha_humanity_score, :float
    add_column :fssai_modification_inquiries, :recaptha_humanity_score, :float
    add_column :home_loan_inquiries, :recaptha_humanity_score, :float
    add_column :gem_registration_inquiries, :recaptha_humanity_score, :float
    add_column :msme_registration_inquiries, :recaptha_humanity_score, :float
    add_column :personal_loan_inquiries, :recaptha_humanity_score, :float
    add_column :loan_against_property_inquiries, :recaptha_humanity_score, :float
    add_column :request_callback_enquiries, :recaptha_humanity_score, :float
  end
end
