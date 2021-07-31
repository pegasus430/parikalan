require 'test_helper'

class GemRegistrationInquiryControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get gem_registration_inquiry_create_url
    assert_response :success
  end

end
