class CreateFssaiModificationInquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :fssai_modification_inquiries do |t|
      t.string :type_of_modification
      t.string :applicant_name
      t.string :email
      t.string :phone
      t.string :food_items_want_to_add

      t.timestamps
    end
  end
end
