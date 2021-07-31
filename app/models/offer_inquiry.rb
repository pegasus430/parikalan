class OfferInquiry < ApplicationRecord
	
  belongs_to :offer

  after_create do |enquiry|
    enquiry.send_email_to_parikalan
  end

  after_update :send_email_to_parikalan

  def send_email_to_parikalan
    ServiceInqueryMailer.notify(self, 'Offer Inquiry').deliver_now! if made_by_human?
  end

end
