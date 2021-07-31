class PolicyController < ApplicationController

  def show
  	@policy = PolicyPage.where(url_slug: params[:slug]).first
  end

end
