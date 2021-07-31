class ChnageTableName < ActiveRecord::Migration[5.1]
  def change
  	rename_table :cupon_codes, :coupon_codes
  end
end
