class CreatePlanPaymentPages < ActiveRecord::Migration[5.1]
  def change
    create_table :plan_payment_pages do |t|
      t.string :header_image
      t.string :header_title

      t.timestamps
    end
  end
end
