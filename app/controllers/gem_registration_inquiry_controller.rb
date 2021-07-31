class GemRegistrationInquiryController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    new_obj = GemRegistrationInquiry.create({
		name_of_business_firm: params[:name_of_business_firm],
		address_of_business_firm: params[:address_of_business_firm],
		nature_business_firm: params[:nature_business_firm],
		services_to_be_sell_in_gem: params[:services_to_be_sell_in_gem],
		owner_name: params[:owner_name],
		owner_aadhar_number: params[:owner_aadhar_number],
		type_of_firm: params[:type_of_firm],
		email: params[:email],
		phone: params[:phone],
		account_holder_name: params[:account_holder_name],
		account_number: params[:account_number],
		ifsc_code: params[:ifsc_code],
		date: params[:date],
		income_tax_return: params[:income_tax_return],
		recaptha_humanity_score: humanity_score
    })
    render plain: new_obj.id
  end

  def update
    obj = GemRegistrationInquiry.find(params[:id])
    obj.payment_ref = params[:payment_ref]
    obj.amount = params[:amount]
    obj.save
    render plain: obj.id
  end

end