require 'rspec/matchers'
class AddPage
  include Capybara::DSL
  include RSpec::Matchers

  def initialize
    super
    expect(find('#title').text).to eq('Add a value!')
  end

  def initial_value(value)
    fill_in 'calculation[initial_value]', with: value
    self
  end

  def addition_value(value)
    fill_in 'calculation[addition_value]', with: value
    self
  end

  def submit
    click_on 'Submit'
    self
  end

  def total
    find('#total').text
  end
end