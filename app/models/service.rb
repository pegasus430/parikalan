class Service < ApplicationRecord
	has_many :service_faqs
	has_many :price_plans
	belongs_to :service_category
	belongs_to :service_sub_category
	mount_uploader :image, ServiceUploader 
	mount_uploader :highlight_image, HeaderImageUploader

	def self.all_services
		all.each.pluck(:name).join(",")
	end

	def lowest_price
		sorted_price_plans.first.price
	end

	def sorted_price_plans
		price_plans.sort { | a, b | a.price <=> b.price }
	end

	def to_s
		name
	end

end
