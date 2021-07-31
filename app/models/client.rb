class Client < ApplicationRecord
	mount_uploader :logo, ClientImageUploader
end
