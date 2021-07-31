require 'test_helper'

class EnquiryControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get enquiry_create_url
    assert_response :success
  end

end
