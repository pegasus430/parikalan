class Blog < ApplicationRecord
  belongs_to :blog_category
  mount_uploader :image, BlogImageUploader 
end
