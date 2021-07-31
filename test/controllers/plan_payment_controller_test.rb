require 'test_helper'

class PlanPaymentControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get plan_payment_create_url
    assert_response :success
  end

end
