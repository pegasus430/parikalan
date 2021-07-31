class ClientLogoUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  include CarrierWave::GoogleImageOptimizer
  
  storage :file
  process :trim
  process resize_to_fit: [266, 226]
  process :optimize_image
  
  def store_dir
    "uploads/#{model.website_id}/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

end
