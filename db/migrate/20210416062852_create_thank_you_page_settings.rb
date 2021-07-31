class CreateThankYouPageSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :thank_you_page_settings do |t|
      t.string :header_image
      t.string :lead_thankyou_page_title
      t.text :lead_thankyou_page_body
      t.text :lead_thank_you_page_javascript
      t.string :payment_thankyou_page_title
      t.text :payment_thankyou_page_body
      t.text :payment_thank_you_page_javascript

      t.timestamps
    end
  end
end
