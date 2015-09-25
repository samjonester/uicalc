require 'rails_helper'

RSpec.describe CalculatorController, type: :controller do

  describe "GET #add" do
    it "returns http success" do
      get :add
      expect(response).to have_http_status(:success)
    end
  end

end
