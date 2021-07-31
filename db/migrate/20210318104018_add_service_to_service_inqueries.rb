class AddServiceToServiceInqueries < ActiveRecord::Migration[5.1]
  def change
    add_reference :service_inqueries, :service, foreign_key: true
  end
end
