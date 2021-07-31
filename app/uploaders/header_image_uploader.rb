class HeaderImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  include CarrierWave::GoogleImageOptimizer
  
  #storage :file
  process resize_to_fill: [1366, 768]
  process :fix_orientation
  process :optimize_image
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
