require 'test_helper'

class CustomPaymentControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get custom_payment_create_url
    assert_response :success
  end

  test "should get update" do
    get custom_payment_update_url
    assert_response :success
  end

end
