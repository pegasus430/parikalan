class AboutController < ApplicationController
  def index
  	@seo_object = AboutPage.first
  end
end
