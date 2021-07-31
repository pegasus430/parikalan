class PlanPaymentController < ApplicationController

  skip_before_action :verify_authenticity_token

  def new
  	@name = params[:name]
  	@phone = params[:phone]
  	@email = params[:email]
  	@item_being_purcased = params[:i]
  	@base_amount = params[:amt].to_f
    @obj_address = "#{params[:model]}##{params[:id]}"
    
    if @name.blank?
      @send_email = true
    else
      @send_email = false
    end

    @seo_object = PlanPaymentPage.first
  end

  def create
  	payment = PlanPayment.create({
  		full_name: params[:full_name],
  		phone_number: params[:phone_number],
  		email_address: params[:email_address],
  		purchased_item: params[:purchased_item],
  		code: params[:code],
  		amount_paid: params[:amount_paid],
  		discount_amount: params[:discount_amount],
      recaptha_humanity_score: humanity_score
  	})

    if params[:send_creation_email] == "true"
      ServiceInqueryMailer.notify(payment, 'Payment Initiated').deliver_now! if payment.made_by_human?
    end

  	render plain: payment.id
  end

  def update
    payment = PlanPayment.find(params[:id])
    payment.payment_ref = params[:payment_ref]
    payment.save
    ServiceInqueryMailer.notify(payment, 'Payment Recieved').deliver_now!
    save_payment_reff_in_obj
    render plain: payment.id
  end

  private

  def save_payment_reff_in_obj
    if params[:obj_address] != "#"
      objClass = params[:obj_address].split("#").first.constantize
      objID = params[:obj_address].split("#").last.to_i
      obj = objClass.find(objID)
      obj.update_attributes(payment_ref: params[:payment_ref])
    end
  end

end
