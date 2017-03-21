require 'rails_helper'

RSpec.describe User, :type => :model do
  describe "attributes" do
    it "should have name and email attributes" do
      expect(user).to have_attributes(name: user.name, email: user.email)
    end
  end

  describe "view" do
    before do
      sign_in
    end

    it "returns HTTP success" do
      get :show, {id: factory_user.id}
      expect(response).to have_http_status(:success)
    end
    it "renders the #show view" do
      get :show, {id: factory_user.id}
      expect(response).to render_template :show
    end
  end
end
