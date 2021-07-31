class FssaiModificationInquiryController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    new_obj = FssaiModificationInquiry.create({
      type_of_modification: params[:type_of_modification],
      applicant_name: params[:applicant_name],
      email: params[:email],
      phone: params[:phone],
      food_items_want_to_add: params[:food_items_want_to_add],
      recaptha_humanity_score: humanity_score
    })
    render plain: new_obj.id
  end

  def update
    obj = FssaiModificationInquiry.find(params[:id])
    obj.payment_ref = params[:payment_ref]
    obj.amount = params[:amount]
    obj.save
    render plain: obj.id
  end

end
