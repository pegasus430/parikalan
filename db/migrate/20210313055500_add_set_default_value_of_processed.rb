class AddSetDefaultValueOfProcessed < ActiveRecord::Migration[5.1]

	def up
	  change_column :service_inqueries, :processed, :boolean, default: false
	end

	def down
	  change_column :service_inqueries, :processed, :boolean, default: nil
	end

end
