class LeadMailer < ApplicationMailer

  default from: 'contact@khojbadami.tech'

  def new_lead(lead)
    @lead = lead
    mail to: the_business(@lead.website_id).main_email, subject: 'New Lead From Re-Think Tech'
  end

  def contact_us(message_hash)
    @message_hash = message_hash
    mail to: the_business(message_hash[:website_id]).main_email, subject: 'New Mesage From The Contact Us Form (Re-Think Tech)'
  end

end
