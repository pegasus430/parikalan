module ApplicationHelper

  def seo_title
    if defined?(@seo_object)
      if !@seo_object.try(:seo_title).nil?
        return @seo_object.seo_title
      else
        "Parikalan Consultancy"
      end
    else
      "Parikalan Consultancy"
    end
  end

  def seo_description
    if defined?(@seo_object)
      if !@seo_object.try(:seo_description).nil?
        return @seo_object.seo_description
      else
        "Parikalan Consultancy"
      end
    else
      "Parikalan Consultancy"
    end
  end

  def seo_keywords
    if defined?(@seo_object)
      if !@seo_object.try(:seo_keyword).nil?
        return @seo_object.seo_keyword
      else
        "Parikalan Consultancy"
      end
    else
      "Parikalan Consultancy"
    end
  end

  def calculators_page
    CalculatorPage.first
  end

  def get_cache_key(object)
    if request_from_mobile?
      "#{object.cache_key}/mobile/v1/#{object.id}/#{object.class.to_s}"
    else
      "#{object.cache_key}/desktop/v1/#{object.id}/#{object.class.to_s}"
    end
  end

  def request_from_mobile?
    request.user_agent =~ /\b(Android|iPhone|iPad|Windows Phone|Opera Mobi|Kindle|BackBerry|PlayBook)\b/i
  end

  def general_settings
    GeneralSetting.first
  end

  def plan_payment_page
    PlanPaymentPage.first
  end

  def pay_now_page
    PayNowPage.first
  end

  def the_business
    Business.where(website_id: website_id).first
  end

  def categories
    Category.where(website_id: website_id)
  end

  def get_full_url_to_asset(path_to_asset)
    request.base_url + path_to_asset
  end

  def clients
    Client.where(website_id: website_id)
  end

  def sliding_headers
    SlidingHeader.where(website_id: website_id)
  end

  def home_page
    HomePage.first
  end

  def the_general
    GeneralInformation.first
  end

  def the_stat
    Stat.first
  end

  def the_blog
    BlogPage.first
  end

  def about_page
    AboutPage.first
  end

  def offer_page
    OfferPage.first
  end

  def contact_page
    ContactPage.first
  end

  def service_page
    ServicePage.first
  end

  def title
    return @title if defined?(@title)
    return ''
  end

  def description
    return @description if defined?(@description)
    return ''
  end

  def call_to_action
    return "Book Now" if the_business.call_to_action.blank?
    return the_business.call_to_action
  end

  def menu_background_color
    get_site_theme_color(:menu_background_color)
  end

  def menu_text_color
    get_site_theme_color(:menu_text_color)
  end

  def highlight_text_color
    get_site_theme_color(:highlight_text_color)
  end

  def content_block_color
    get_site_theme_color(:content_block_color)
  end

  def alternate_content_block_color
    return "#F9F9F9" if site_theme.nil? || site_theme.send(:alternate_content_block_color).blank?
    return site_theme.send(:alternate_content_block_color)
  end

  def get_site_theme_color(column_name)
    return "#fff" if site_theme.nil? || site_theme.send(column_name).blank?
    return  site_theme.send(column_name)
  end

  def business_does_products?
    return the_business.products?
  end

  def products_or_services
    return "Products" if business_does_products?
    return "Services"
  end

  def button_cta
    return the_business.button_cta unless the_business.button_cta.blank?
    return "Book Now"
  end

  def site_theme
    SiteTheme.where(website_id: website_id).first
  end

  def website_id
    @wesbite_id ||= Website.get_id_from_base_url(request.base_url)
  end

  def home_page_services
    Service.where(show_on_home_page: true, website_id: website_id)
  end

  def all_services
    Service.where(website_id: website_id)
  end

  def why_choose_us_reasons
    WhyChooseUsReason.where(website_id: website_id).limit(4)
  end

  def phone_numbers
    PhoneNumber.where(website_id: website_id).order(:postion)
  end

  def areas_we_serve_in
    AreaWeServeIn.where(website_id: website_id)
  end

  def stats
    Stat.where(website_id: website_id).limit(3)
  end

  def testimonails
    Testimonial.where(website_id: website_id)
  end

  def home_page_popup
    HomePagePopup.first
  end

end
