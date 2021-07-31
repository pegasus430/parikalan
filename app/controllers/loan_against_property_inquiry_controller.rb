class LoanAgainstPropertyInquiryController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    new_obj = LoanAgainstPropertyInquiry.create({
        loan_amount: params[:loan_amount],
        name: params[:name],
        phone: params[:phone],
        email: params[:email],
        property_located: params[:property_located],
        type_of_property: params[:type_of_property],
        property_value: params[:property_value],
        occupation: params[:occupation],
        monthly_emi: params[:monthly_emi],
        recaptha_humanity_score: humanity_score
    })
    render plain: new_obj.id
  end

  def update
    obj = LoanAgainstPropertyInquiry.find(params[:id])
    obj.payment_ref = params[:payment_ref]
    obj.amount = params[:amount]
    obj.save
    render plain: obj.id
  end


end
