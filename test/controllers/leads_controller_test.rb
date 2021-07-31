require 'test_helper'

class LeadsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get leads_create_url
    assert_response :success
  end

end
