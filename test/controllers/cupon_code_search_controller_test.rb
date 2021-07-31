require 'test_helper'

class CuponCodeSearchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cupon_code_search_index_url
    assert_response :success
  end

end
