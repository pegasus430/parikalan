class LoanAgainstPropertyInquiry < ApplicationRecord

  after_create do |enquiry|
    enquiry.send_email_to_parikalan
  end

  after_update :send_email_to_parikalan

  def send_email_to_parikalan
    ServiceInqueryMailer.notify(self, 'Loan Against Property Inquiries').deliver_now! if made_by_human? 
  end

end
