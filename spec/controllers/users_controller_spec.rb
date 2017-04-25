require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:my_user) { create(:user) }

  describe "GET #show" do
    before do
      sign_in(my_user)
    end
    it "displays user#show when logged in" do
      get :show, :id => my_user.id
      expect(response).to have_http_status(200)
    end
  end
end
