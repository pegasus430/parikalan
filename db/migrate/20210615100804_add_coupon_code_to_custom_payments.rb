class AddCouponCodeToCustomPayments < ActiveRecord::Migration[5.1]
  def change
    add_column :custom_payments, :coupon_code, :string
  end
end
