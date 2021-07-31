class ServiceInquery < ApplicationRecord

  belongs_to :service

  after_create :send_email
  after_update :send_email

  def send_email
    ServiceInqueryMailer.notify(self, 'Service Enquiery Filled').deliver_now! if made_by_human?
  end

end
