require 'test_helper'

class RequestCallbackEnquiryControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get request_callback_enquiry_create_url
    assert_response :success
  end

end
