class FasaiRegistrationInquiryController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    new_obj = FasaiRegistrationInquiry.create({
      name: params[:name],
      phone: params[:phone],
      email: params[:email],
      nature_of_business: params[:nature_of_business],
      expected_turnover: params[:expected_turnover],
      business_address: params[:business_address],
      business_name: params[:business_name],
      pincode: params[:pincode],
      business_entity: params[:business_entity],
      registration_tenure: params[:registration_tenure],
      recaptha_humanity_score: humanity_score
    })
    render plain: new_obj.id
  end

  def update
    obj = FasaiRegistrationInquiry.find(params[:id])
    obj.payment_ref = params[:payment_ref]
    obj.amount = params[:amount]
    obj.save
    render plain: obj.id
  end

end
