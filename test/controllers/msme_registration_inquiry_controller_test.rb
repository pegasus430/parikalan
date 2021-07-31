require 'test_helper'

class MsmeRegistrationInquiryControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get msme_registration_inquiry_create_url
    assert_response :success
  end

end
