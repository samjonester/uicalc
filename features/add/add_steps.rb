Before do
  visit '/'
end

Given(/^I have the initial value (.*)$/) do |initial_value|
  AddPage.new.initial_value(initial_value)
end

When(/^I add the value (.*)$/) do |addition_value|
  AddPage.new.addition_value(addition_value).submit
end

Then(/^I am returned (.*)$/) do |calculation_value|
  expect(AddPage.new.total).to eq(calculation_value)

end