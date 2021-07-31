class CreateRequestCallbackEnquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :request_callback_enquiries do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
