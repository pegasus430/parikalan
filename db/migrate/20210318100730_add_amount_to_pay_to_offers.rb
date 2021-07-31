class AddAmountToPayToOffers < ActiveRecord::Migration[5.1]
  def change
    add_column :offers, :amount_to_pay, :integer
  end
end
