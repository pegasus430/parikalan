class Offer < ApplicationRecord
	mount_uploader :image, OfferImageUploader


	def to_s
		title
	end

end
