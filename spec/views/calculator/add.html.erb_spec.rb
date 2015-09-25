require 'rails_helper'

RSpec.describe 'calculator/add.html.erb', type: :view do

  context 'Render' do
    it 'should render the page' do
      render

      expect(rendered).to match /Add a value!/
    end
  end

end
