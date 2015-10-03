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
  [
      {
          initial_value: 0,
          addition_value: '15',
          total: 15,
      },
      {
          initial_value: 0,
          addition_value: '15,20',
          total: 35,
      },
      {
          initial_value: 10,
          addition_value: '15',
          total: 25,
      },
      {
          initial_value: 10,
          addition_value: '15,20',
          total: 45,
      }
  ].each do |test|
    it 'should calculate' do
      calculation = Calculation.new({initial_value: test[:initial_value], addition_value: test[:addition_value]})
      expect(helper.calculate(calculation)).to eq(test[:total])
    end
  end
end
