class EnquiryController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    ServiceInquery.create(
      {
        name: params[:name],
        phone: params[:phone],
        email: params[:email],
        comment: params[:comment],
        service_id: params[:service_id],
        recaptha_humanity_score: humanity_score
    })
  end

end
