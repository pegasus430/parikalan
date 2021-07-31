require 'test_helper'

class OfferInquiryControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get offer_inquiry_create_url
    assert_response :success
  end

  test "should get update" do
    get offer_inquiry_update_url
    assert_response :success
  end

end
