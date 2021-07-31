class MsmeRegistrationInquiryController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    new_obj = MsmeRegistrationInquiry.create({
		aadhaar_number: params[:aadhaar_number],
		name_of_applicant: params[:name_of_applicant],
		social_category: params[:social_category],
		gender: params[:gender],
		physically_handicapped: params[:physically_handicapped],
		name_of_business: params[:name_of_business],
		gst_no: params[:gst_no],
		type_of_organisation: params[:type_of_organisation],
		pan_number: params[:pan_number],
		location_of_plant_flat_no: params[:location_of_plant_flat_no],
		location_of_plant_premise: params[:location_of_plant_premise],
		location_of_plant_road: params[:location_of_plant_road],
		location_of_plant_area: params[:location_of_plant_area],
		location_of_plant_city: params[:location_of_plant_city],
		location_of_plant_pin_no: params[:location_of_plant_pin_no],
		location_of_plant_state: params[:location_of_plant_state],
		location_of_plant_district: params[:location_of_plant_district],
		office_address: params[:office_address],
		email: params[:email],
		phone: params[:phone],
		date_of_commencement_of_business: params[:date_of_commencement_of_business],
		whether_production: params[:whether_production],
		bank_name: params[:bank_name],
		bank_account_number: params[:bank_account_number],
		ifsc_code: params[:ifsc_code],
		business_activity: params[:business_activity],
		nic_two_digit_code: params[:nic_two_digit_code],
		additional_details_about_business: params[:additional_details_about_business],
		male_employee: params[:male_employee],
		female_employee: params[:female_employee],
		other_employee: params[:other_employee],
		depreciated_cost: params[:depreciated_cost],
		exclusion_of_cost: params[:exclusion_of_cost],
		net_investment: params[:net_investment],
		total_turnover_a: params[:total_turnover_a],
		total_turnover_b: params[:total_turnover_b],
		total_turnover_c: params[:total_turnover_c],
		intrested_to_get_registered_on_GeM: params[:intrested_to_get_registered_on_GeM],
		intrested_to_get_registered_on_TReDS_portal: params[:intrested_to_get_registered_on_TReDS_portal],
    	recaptha_humanity_score: humanity_score
    })
    render plain: new_obj.id
  end

  def update
    obj = MsmeRegistrationInquiry.find(params[:id])
    obj.payment_ref = params[:payment_ref]
    obj.amount = params[:amount]
    obj.save
    render plain: obj.id
  end

end
