class CuponCodeSearchController < ApplicationController

  def index
  	@code = params[:code]
  	@amount = params[:amount]
  	@message = ""

    unless @code.blank?
      @message = "<b>Note:</b> No code with the name <strong>#{@code}</strong> was found." if CouponCode.where(code: @code.strip).count == 0
    end
  	
  	@code_object = CouponCode.where(code: @code.strip).first

    if @code_object
      if @code_object.can_be_used?(@amount.to_i)
        @dicount_amount = @code_object.get_amount_off(@amount.to_i)
        @message = "<b>Note:</b> You get <strong>#{@dicount_amount}</strong> using the cupon code <strong>#{@code}</strong>!"
      else
        @message = "<b>Note:</b> The code <strong>#{@code}</strong> is no longer valid."
      end
    end

  end

end
