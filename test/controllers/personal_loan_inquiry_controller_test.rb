require 'test_helper'

class PersonalLoanInquiryControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get personal_loan_inquiry_create_url
    assert_response :success
  end

end
