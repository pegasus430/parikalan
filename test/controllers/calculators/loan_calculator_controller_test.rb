require 'test_helper'

class Calculators::LoanCalculatorControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get calculators_loan_calculator_show_url
    assert_response :success
  end

end
