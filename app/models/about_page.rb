class AboutPage < ApplicationRecord
	mount_uploader :header_image, HeaderImageUploader
	mount_uploader :about_section_image, AboutImageUploader
	mount_uploader :usp_icon_1, LogoSvgUploader
	mount_uploader :usp_icon_2, LogoSvgUploader
	mount_uploader :usp_icon_3, LogoSvgUploader
end
