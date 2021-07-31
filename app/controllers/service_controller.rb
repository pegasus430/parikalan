class ServiceController < ApplicationController

  def index
  end

  def show
  	@service = Service.find_by_url_slug(params[:slug])
  	@seo_object = @service
  end

  def thank_you
  	if params[:type] == 'lead'
  		@lead = true
  		@payment = false
  	else
  		@lead = false
  		@payment = true
  	end
  	@thank_you_page = ThankYouPageSetting.first
  end

end
