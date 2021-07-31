class ServiceInqueryMailer < ApplicationMailer

  def notify(new_record_that_was_created, subject)
    @new_record_that_was_created = new_record_that_was_created
    
    who_to_send_email_to = []

    if @new_record_that_was_created.has_attribute?(:payment_ref) && @new_record_that_was_created.send(:payment_ref).blank?
    	who_to_send_email_to = [ GeneralSetting.first.inquiry_notification_email_address ]
    else
    	who_to_send_email_to = [ GeneralSetting.first.inquiry_notification_email_address, new_record_that_was_created.try(:email).try(:strip) ].compact
    end

    mail to: who_to_send_email_to, from: [ GeneralSetting.first.inquiry_notification_email_address ], subject: subject
  end


end
