require 'test_helper'

class PayNowControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pay_now_new_url
    assert_response :success
  end

end
