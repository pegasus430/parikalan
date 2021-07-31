class PayNowController < ApplicationController

  def new
  	@seo_object = PayNowPage.first
  end

end
