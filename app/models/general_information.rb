class GeneralInformation < ApplicationRecord
	mount_uploader :header_logo, LogoSvgUploader
	mount_uploader :footer_logo, LogoSvgUploader
end
