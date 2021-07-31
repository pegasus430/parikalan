class AddRecapthaHumanityScoreToPlanPayments < ActiveRecord::Migration[5.1]

  def change
    add_column :plan_payments, :recaptha_humanity_score, :float
    add_column :custom_payments, :recaptha_humanity_score, :float
  end

end
