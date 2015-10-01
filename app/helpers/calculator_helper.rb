require 'calculator/string_calculator'
require 'tokenizer/tokenizer'
module CalculatorHelper
  def calculate(calculation)
    StringCalculator.new(calculation.initial_value).add(calculation.addition_value).value
  end
end
