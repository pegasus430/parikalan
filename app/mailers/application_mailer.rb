class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def the_business(website_id)
    @the_business ||= Business.where(website_id: website_id).first
  end
  
end
