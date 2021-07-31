class BlogCategory < ApplicationRecord
	has_many :blogs
	mount_uploader :image, BlogImageUploader
end
