require 'test_helper'

class ClickToCallControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get click_to_call_create_url
    assert_response :success
  end

end
