require 'rails_helper'

RSpec.describe CalculatorController, type: :controller do

  describe 'GET #add' do
    it 'returns http success and new calculation' do
      get :add
      expect(response).to have_http_status(:success)
      expect(assigns[:calculation]).to_not eq(nil)
      expect(assigns[:total]).to eq(nil)
    end
  end

  describe 'POST #add' do
    it 'returns http success and new total' do
      post :add, :calculation => {
                   initial_value: '10',
                   addition_value: '15'
               }
      expect(response).to have_http_status(:success)
      calculation = assigns[:calculation]
      expect(calculation).to_not eq(nil)
      expect(calculation.initial_value).to eq(10)
      expect(calculation.addition_value).to eq('15')
      expect(assigns[:total]).to eq(25)
    end
  end

end
