require 'rails_helper'

RSpec.describe 'calculator/add.html.erb', type: :view do

  context 'Render' do
    it 'should render the page for new calculation and no total' do
      @calculation = Calculation.new
      render

      expect(rendered).to match /Add a value!/
      expect(rendered).to_not match /Your Total!/
    end
    it 'should render the page for new calculation and no total' do
      @calculation = Calculation.new
      @total = 25
      render

      expect(rendered).to match /Add a value!/
      expect(rendered).to match /Your Total!/
    end
  end

end
