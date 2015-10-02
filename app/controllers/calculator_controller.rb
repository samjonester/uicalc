class CalculatorController < ApplicationController
  include CalculatorHelper
  def add
    @calculation = Calculation.new(params[:calculation])

		@total = calculate(@calculation) if @calculation.valid?
  end
end
