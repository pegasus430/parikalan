class Calculators::LoanCalculatorController < ApplicationController

  def show
    @type = params[:type]
    get_values_based_on_type
  end

  private

  def get_values_based_on_type
    case @type
    when "home"
      @amount = 5000000
      @rate_of_interest = 10.5
      @tenue = 240
      @page_title = CalculatorPage.first.home_loan_calculator_title
    when "personal"
      @amount = 350000
      @rate_of_interest = 17.5
      @tenue = 36
      @page_title = CalculatorPage.first.personal_loan_calculator_title
    when "car"
      @amount = 400000
      @rate_of_interest = 12.5
      @tenue = 60
      @page_title = CalculatorPage.first.car_loan_calculator_title
    end
  end

end
