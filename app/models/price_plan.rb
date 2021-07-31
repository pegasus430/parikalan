class PricePlan < ApplicationRecord
	belongs_to :service
	has_many :price_plan_features

	def to_s
		name
	end

	def available_features
		availabale_fetaures.split("\r\n")
	end

	def non_available_features
		not_availabale_fetaures.split("\r\n")
	end

	def params_hash_for_payment_page
		{
			i: "#{try(:service).try(:name)} - #{name}",
			amt: price
		}
	end

end
