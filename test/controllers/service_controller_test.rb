require 'test_helper'

class ServiceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get service_index_url
    assert_response :success
  end

end
