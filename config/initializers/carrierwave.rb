module CarrierWave
  module GoogleImageOptimizer

    def fix_orientation
      manipulate! do |img|
        img.auto_orient!
        img
      end
    end

    def optimize_image
      if current_path.ends_with? 'jpg'
        im_command = "convert #{current_path} -sampling-factor 4:2:0 -strip -quality 85 -interlace JPEG -colorspace sRGB #{current_path}"
      elsif current_path.ends_with?('png') || current_path.ends_with?('PNG')
        im_command = "convert #{current_path} -strip #{current_path}"
      end
      `#{im_command}`
    end

    def trim
      manipulate! do |img|
        img.fuzz = "10%"
        img.trim!
        puts img
        img
      end
    end
    
  end
end
