require 'test_helper'

class Calculators::GstCalculatorControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get calculators_gst_calculator_show_url
    assert_response :success
  end

end
