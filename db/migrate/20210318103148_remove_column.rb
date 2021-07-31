class RemoveColumn < ActiveRecord::Migration[5.1]
  def change
	rename_column :payments, :cupon_code_id, :coupon_code_id
  end
end
