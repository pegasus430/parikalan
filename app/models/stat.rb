class Stat < ApplicationRecord
	mount_uploader :icon_1, LogoSvgUploader
	mount_uploader :icon_2, LogoSvgUploader
	mount_uploader :icon_3, LogoSvgUploader
end
