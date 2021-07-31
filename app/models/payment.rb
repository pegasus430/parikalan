class Payment < ApplicationRecord
  belongs_to :service
  belongs_to :price_plan
  belongs_to :coupon_code, optional: true

  after_create :send_email
  after_update :send_email

  def send_email
    ServiceInqueryMailer.notify(self, 'New Service Inquiry').deliver_now! if made_by_human? 
  end


end
