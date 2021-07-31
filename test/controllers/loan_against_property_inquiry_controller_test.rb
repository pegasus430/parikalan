require 'test_helper'

class LoanAgainstPropertyInquiryControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get loan_against_property_inquiry_create_url
    assert_response :success
  end

end
