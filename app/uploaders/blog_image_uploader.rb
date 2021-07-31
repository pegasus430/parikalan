class BlogImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  include CarrierWave::GoogleImageOptimizer
  
  #storage :file
  process resize_to_fit: [1170, 680]
  process :fix_orientation
  process :optimize_image
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process resize_to_fill: [470, 298]
    process :fix_orientation
    process :optimize_image
  end

end
