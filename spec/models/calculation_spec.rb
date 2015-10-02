require 'rails_helper'

RSpec.describe Calculation, :type => :model do
  it 'should create a new object without a hash' do
    calculation = Calculation.new
    expect(calculation.initial_value).to eq(0)
    expect(calculation.addition_value).to eq('')
  end

  it 'should create a new object with a hash' do
    calculation = Calculation.new({initial_value: '10', addition_value: '15'})
    expect(calculation.initial_value).to eq(10)
    expect(calculation.addition_value).to eq('15')
  end
end
