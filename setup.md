# Image Optimization To Be Installed On The Server

```bash
sudo apt-get install jpegoptim
sudo apt-get install optipng
```

# Create Migrations

```bash
rails g model Business name tag_line logo_svg main_contact_number main_email facebook_page instagram_page main_location_country main_location_city main_location_street_address_line_1 main_location_street_address_line_2 main_location_pin_code main_location_state short_company_description

rails g model Service title short_description photo long_description:text

rails g model HomePage header_image header_text:text who_choose_us_image testimonials_background_image stats_background_image 

rails g model WhyChooseUsReason title desctiption:text

rails g model Testimonial name photo testimonial:text

rails g model Stat stat_text stat_number:integer

rails g model AboutUsPage about_us_title about_us_description_text:text about_us_image about_us_page_header_image

rails g model PhoneNumber number postion:integer

rails g model Client logo_image

rails g model ServicePhoto service:references photo caption

rails g model Lead service:references name mobile_no

rails g model ServicePage header_image

rails g model LocalityWeServeIn name

rails g model ServicePage header_image

rails g model ContactUsPage header_image

rails g model ServiceFaq service:references question answer:text

rails g model AreaWeServeIn area

rails g model SiteTheme menu_background_color menu_text_color highlight_text_color
```

# Add to Gem File

```ruby
gem 'activeadmin'
gem 'devise'
gem 'arctic_admin'
gem 'activeadmin_quill_editor'
gem 'carrierwave', '~> 1.0'
gem 'rmagick'
gem 'carrierwave-imageoptimizer'
gem 'country_select'
```

# Run On Terminal

```bash
bundle install
rails g active_admin:install
rake db:migrate
rake db:seed
```

# Generate Active Admin Model Files

```bash
rails generate active_admin:resource Business
rails generate active_admin:resource Service
rails generate active_admin:resource HomePage
rails generate active_admin:resource WhyChooseUsReason
rails generate active_admin:resource Testimonial
rails generate active_admin:resource Stat
rails generate active_admin:resource AboutUsPage
rails generate active_admin:resource PhoneNumber
rails generate active_admin:resource Client
rails generate active_admin:resource ServicePhoto
rails generate active_admin:resource Lead
rails generate active_admin:resource ServicePage
rails generate active_admin:resource LocalityWeServeIn
rails generate active_admin:resource ServicePage
rails generate active_admin:resource ContactUsPage
rails generate active_admin:resource ServiceFaq
rails generate active_admin:resource AreaWeServeIn
rails generate active_admin:resource SiteTheme
```

# Create Uploaders For For CarrierWave Images

```bash
rails g uploader LogoSvg
rails g uploader ServicePhoto
rails g uploader Backgrounds
rails g uploader WhyChooseUs
rails g uploader Testimonial
rails g uploader AboutUsImage
rails g uploader SubHeaderImage
rails g uploader ClientLogo
rails g uploader ServiceGalleryPhoto
```

# Replace The CONTENTS Of The All The Uploaders With

```ruby
  include CarrierWave::RMagick
  include CarrierWave::ImageOptimizer
  
  storage :file
  process :optimize
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
```

# Add Image Compression & Variation Rules To All Of The Photo Uploaders

1. To: ServicePhotoUploader

```ruby
process resize_to_fill: [950, 545]

version :thumb do
	process resize_to_fill: [500, 350]
end
``` 

2. To: BackgroundsUploader

```ruby
process resize_to_fill: [1920, 900]
```

3. To: WhyChooseUsUploader

```ruby
process resize_to_fill: [960, 668]
```

4. To: TestimonialUploader

```ruby
process resize_to_fill: [80, 80]
```

5. To: AboutUsImageUploader

```ruby
process resize_to_fill: [500, 330]
```

6. To: SubHeaderImageUploader

```ruby
process resize_to_fill: [1920, 400]
```

7. To: ClientLogo

```ruby
process resize_to_fill: [266, 60]
```

and in 'client.rb'

```ruby
	mount_uploader :logo_image, ClientLogoUploader
```

8. To: ServiceGallery

```ruby
process resize_to_fit: [900, 900]

version :thumb do
	process resize_to_fill: [350, 350]
end
```

# Empty Out All Admin Files

# Install Artic Admin Theme

Follow instuctions at: https://github.com/cle61/arctic_admin

# Install Quill Text Editor

Follow instuctions at: https://github.com/blocknotes/activeadmin_quill_editor

# Generate Controllers

```bash
rails g controller about index --skip-routes --no-assets --no-javascripts --no-stylesheets
rails g controller contact index --skip-routes --no-assets --no-javascripts --no-stylesheets
rails g controller service index show --skip-routes --no-assets --no-javascripts --no-stylesheets
```