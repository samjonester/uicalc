require 'rails_helper'

RSpec.describe Calculation, type: :model do
  context 'validation' do
    it 'should fail with no values' do
      expect(Calculation.new.valid?).to eq(false)
    end

    it 'should fail with only initial value' do
      calculation = Calculation.new
      calculation.initial_value = 5
      expect(calculation.valid?).to eq(false)
    end

    it 'should fail with only addition value' do
      calculation = Calculation.new
      calculation.addition_value = '5'
      expect(calculation.valid?).to eq(false)
    end

    it 'should pass with initial and addition value' do
      calculation = Calculation.new
      calculation.initial_value = 5
      calculation.addition_value = '5'
      expect(calculation.valid?).to eq(true)
    end
  end
end
