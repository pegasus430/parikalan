class CreateGeneralSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :general_settings do |t|
      t.text :email_header_text
      t.text :email_footer_text
      t.string :inquiry_notification_email_address
      t.string :razor_pay_key

      t.timestamps
    end
  end
end
