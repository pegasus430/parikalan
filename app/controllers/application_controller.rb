class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  helper_method :mobile?

  def humanity_score
    if params["new_recaptcha_token"]
      detailed_score = NewGoogleRecaptcha.get_humanity_detailed(params["new_recaptcha_token"], "form_fill")
      return detailed_score[:score]
    else
      return 0.0
    end
  end

  def the_business
    Business.where(website_id: website_id).first
  end

  def website_id
    @wesbite_id ||= Website.get_id_from_base_url(request.base_url)
  end

  private

  def mobile?
    request.user_agent =~ /\b(Android|iPhone|iPad|Windows Phone|Opera Mobi|Kindle|BackBerry|PlayBook)\b/i
  end

end
