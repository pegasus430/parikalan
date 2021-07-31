require 'test_helper'

class FssaiModificationInquiryControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get fssai_modification_inquiry_create_url
    assert_response :success
  end

end
