class CustomPayment < ApplicationRecord

  after_update :capture_payment

  def capture_payment
  	return if payment_ref.blank?
    Razorpay.setup(GeneralSetting.first.razor_pay_key, RP_SECRET)
    Razorpay::Payment.fetch(payment_ref).capture( { amount: amount_paid.to_i * 100 })
  end

end
