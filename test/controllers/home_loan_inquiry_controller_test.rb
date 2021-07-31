require 'test_helper'

class HomeLoanInquiryControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get home_loan_inquiry_create_url
    assert_response :success
  end

end
