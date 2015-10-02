require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the CalculatorHelper. For example:
#
# describe CalculatorHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe CalculatorHelper, type: :helper do
  it 'should calculate' do
    calculation = Calculation.new({initial_value: 0, addition_value: '15'})
    expect(helper.calculate(calculation)).to eq(15)
  end
end
