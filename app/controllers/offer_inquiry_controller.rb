class OfferInquiryController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    new_obj = OfferInquiry.create({
  		name: params[:name],
  		phone: params[:phone],
  		email: params[:email],
  		offer_id: params[:offer_id],
      amount: params[:amount],
      recaptha_humanity_score: humanity_score
    })
    render plain: new_obj.id
  end

  def update
    obj = OfferInquiry.find(params[:id])
    obj.payment_ref = params[:payment_ref]
    obj.save
    render plain: obj.id
  end


end