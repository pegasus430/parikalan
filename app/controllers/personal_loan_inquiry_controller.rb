class PersonalLoanInquiryController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    new_obj = PersonalLoanInquiry.create({
       loan_amount: params[:loan_amount],
       name: params[:name],
       phone: params[:phone],
       email: params[:email],
       city: params[:city],
       residence_type: params[:residence_type],
       occupation: params[:occupation],
       recaptha_humanity_score: humanity_score
    })
    render plain: new_obj.id
  end

  def update
    obj = PersonalLoanInquiry.find(params[:id])
    obj.payment_ref = params[:payment_ref]
    obj.amount = params[:amount]
    obj.save
    render plain: obj.id
  end

end
