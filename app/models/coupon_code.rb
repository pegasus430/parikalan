class CouponCode < ApplicationRecord

  has_many :payments
  enum cupon_type: ['Percentage Off', 'Amount Off']

  def can_be_used?(order_amount)
  	return false if valid_till < Date.today
  	return false if has_been_used_too_many_times?
  	return false if order_amount < min_purchase_amount
  	return true
  end

  def has_been_used_too_many_times?
  	payments.count >= max_number_of_clients
  end

  def get_amount_off(order_amount)
  	if cupon_type == 'Percentage Off'
  		amount_off_as_per_cupon = order_amount - (order_amount.to_f * ( (100.to_f - percentage_off.to_f) / 100.to_f ))
  		return [ amount_off_as_per_cupon, max_percentage_off_amount ].min
  	else
  		return amount_off
  	end
  end

  def to_s
    code
  end

end
