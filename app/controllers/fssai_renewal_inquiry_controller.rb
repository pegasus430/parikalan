class FssaiRenewalInquiryController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    new_obj = FssaiRenewalInquiry.create({
       type_of_renewal: params[:type_of_renewal],
       organization_name: params[:organization_name],
       applicant_name: params[:applicant_name],
       email: params[:email],
       phone: params[:phone],
       license_number: params[:license_number],
       tenure: params[:tenure],
       recaptha_humanity_score: humanity_score
    })
    render plain: new_obj.id
  end

  def update
    obj = FssaiRenewalInquiry.find(params[:id])
    obj.payment_ref = params[:payment_ref]
    obj.amount = params[:amount]
    obj.save
    render plain: obj.id
  end

end
