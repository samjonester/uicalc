class CalculatorController < ApplicationController
  include CalculatorHelper
  def add
    @calculation = Calculation.new(params[:calculation])

    @total = calculate(@calculation) if params[:calculation].present?
  end
end
