class BlogPage < ApplicationRecord
	mount_uploader :header_image, HeaderImageUploader
end
