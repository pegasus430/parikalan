require 'test_helper'

class FasaiRegistrationInquiryControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get fasai_registration_inquiry_create_url
    assert_response :success
  end

end
