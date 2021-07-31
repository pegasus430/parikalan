class HomeLoanInquiryController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    new_obj = HomeLoanInquiry.create({
        loan_amount: params[:loan_amount],
        name: params[:name],
        phone: params[:phone],
        email: params[:email],
        property_located: params[:property_located],
        occupation: params[:occupation],
        monthly_emi: params[:monthly_emi],
        purpose: params[:purpose],
        recaptha_humanity_score: humanity_score
    })
    render plain: new_obj.id
  end

  def update
    obj = HomeLoanInquiry.find(params[:id])
    obj.payment_ref = params[:payment_ref]
    obj.amount = params[:amount]
    obj.save
    render plain: obj.id
  end

end
