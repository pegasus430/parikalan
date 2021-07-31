class HomeController < ApplicationController

  def index
  	@seo_object = HomePage.first
  end

end
