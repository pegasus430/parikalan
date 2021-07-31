class PaymentsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
  	payment = Payment.create({
  		service_id: params[:service_id],
  		price_plan_id: params[:price_plan_id],
  		amount: params[:amount],
  		name: params[:name],
  		phone: params[:phone],
  		email: params[:email],
  		coupon_code_id: params[:cupon_code_id].blank? ? nil : params[:cupon_code_id],
      recaptha_humanity_score: humanity_score
  	})
    render plain: payment.id
  end

  def update
    payment = Payment.find(params[:id])
    payment.payment_ref = params[:payment_ref]
    payment.save
    render plain: payment.id
  end

end
