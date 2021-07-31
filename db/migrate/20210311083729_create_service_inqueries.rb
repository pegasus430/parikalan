class CreateServiceInqueries < ActiveRecord::Migration[5.1]
  def change
    create_table :service_inqueries do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :comment
      t.boolean :processed

      t.timestamps
    end
  end
end
