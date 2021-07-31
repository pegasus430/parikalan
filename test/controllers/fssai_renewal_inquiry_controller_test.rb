require 'test_helper'

class FssaiRenewalInquiryControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get fssai_renewal_inquiry_create_url
    assert_response :success
  end

end
