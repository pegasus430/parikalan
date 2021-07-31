class ServicePage < ApplicationRecord
	mount_uploader :header_image, HeaderImageUploader
	mount_uploader :icon_1, LogoSvgUploader
	mount_uploader :icon_2, LogoSvgUploader
	mount_uploader :icon_3, LogoSvgUploader
end
