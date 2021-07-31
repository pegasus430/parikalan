require 'test_helper'

class PolicyControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get policy_show_url
    assert_response :success
  end

end
