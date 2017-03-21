require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
    it "renders the home template" do
      get :home
      expect(response).to render_template("home")
    end
  end

  describe "GET about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

end
