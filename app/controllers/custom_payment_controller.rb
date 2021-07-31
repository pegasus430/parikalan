class CustomPaymentController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
  	payment = CustomPayment.create({
  		name: params[:name],
  		phone: params[:phone],
  		email: params[:email],
  		amount_paid: params[:amount_paid],
  		message: params[:message],
      coupon_code: params[:coupon_code]
  	})

    ServiceInqueryMailer.notify(payment, 'Payment Initiated').deliver_now!

  	render plain: payment.id
  end

  def update
    payment = CustomPayment.find(params[:id])
    payment.payment_ref = params[:payment_ref]
    payment.save

    ServiceInqueryMailer.notify(payment, 'Payment Recieved').deliver_now!

    render plain: payment.id
  end

end
