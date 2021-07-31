class RequestCallbackEnquiryController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    RequestCallbackEnquiry.create(
      {
        name: params[:name],
        phone: params[:phone],
        email: params[:email],
        message: params[:message],
        recaptha_humanity_score: humanity_score
    })

    redirect_to thank_you_path(type: 'lead')
  end

end
