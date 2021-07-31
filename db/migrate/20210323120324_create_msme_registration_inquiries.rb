class CreateMsmeRegistrationInquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :msme_registration_inquiries do |t|
      t.string :aadhaar_number
      t.string :name_of_applicant
      t.string :social_category
      t.string :gender
      t.string :physically_handicapped
      t.string :name_of_business
      t.string :gst_no
      t.string :type_of_organisation
      t.string :pan_number
      t.string :location_of_plant_flat_no
      t.string :location_of_plant_premise
      t.string :location_of_plant_road
      t.string :location_of_plant_area
      t.string :location_of_plant_city
      t.string :location_of_plant_pin_no
      t.string :location_of_plant_state
      t.string :location_of_plant_district
      t.string :office_address
      t.string :email
      t.string :phone
      t.string :date_of_commencement_of_business
      t.string :whether_production
      t.string :bank_name
      t.string :bank_account_number
      t.string :ifsc_code
      t.string :business_activity
      t.string :nic_two_digit_code
      t.string :additional_details_about_business
      t.string :male_employee
      t.string :female_employee
      t.string :other_employee
      t.string :depreciated_cost
      t.string :exclusion_of_cost
      t.string :net_investment
      t.string :total_turnover_a
      t.string :total_turnover_b
      t.string :total_turnover_c
      t.string :intrested_to_get_registered_on_GeM
      t.string :intrested_to_get_registered_on_TReDS_portal

      t.timestamps
    end
  end
end
