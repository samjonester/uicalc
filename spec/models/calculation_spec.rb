require 'rails_helper'

RSpec.describe Calculation, :type => :model do
  it 'should have a valid factory' do
    expect(FactoryGirl.build(:calculation)).to be_valid
  end

  it 'should require initial value' do
    expect(FactoryGirl.build(:calculation, initial_value: nil)).to_not be_valid
    expect(FactoryGirl.build(:calculation, initial_value: 10)).to be_valid

    # TODO Figure out why this doesn't work
    # expect(FactoryGirl.build(:calculation, initial_value: '10')).to_not be_valid
  end

  it 'should require addition value' do
    expect(FactoryGirl.build(:calculation, addition_value: nil)).to_not be_valid
    expect(FactoryGirl.build(:calculation, addition_value: '10')).to be_valid

    # TODO Figure out why this doesn't work
    # expect(FactoryGirl.build(:calculation, addition_value: 10)).to_not be_valid
  end
end
