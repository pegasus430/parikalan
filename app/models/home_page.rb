class HomePage < ApplicationRecord
	mount_uploader :banner_image, HeaderImageUploader
	mount_uploader :about_section_image, AboutImageUploader
	mount_uploader :price_section_background_image, HeaderImageUploader
	mount_uploader :usp_image_1, HeaderImageUploader
	mount_uploader :usp_image_2, HeaderImageUploader
	mount_uploader :usp_image_3, HeaderImageUploader
	mount_uploader :usp_image_4, HeaderImageUploader
	mount_uploader :usp_icon_1, LogoSvgUploader
	mount_uploader :usp_icon_2, LogoSvgUploader
	mount_uploader :usp_icon_3, LogoSvgUploader
	mount_uploader :usp_icon_4, LogoSvgUploader
end
