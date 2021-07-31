class Testimonial < ApplicationRecord
	mount_uploader :image, TestimonialUploader
end
