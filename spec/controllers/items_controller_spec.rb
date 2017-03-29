require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  let(:my_user) { create(:user) }
  let(:my_item) { create(:item, user: my_user) }

  # Shoulda matchers
  it { should route(:post, '/users/1/items').to(action: :create, user_id: 1) }

  context "guest" do
    describe "POST #create" do
      it "redirects the user to sign in" do
        post :create, user_id: my_user.id, item: {name: Faker::Hipster.sentence(2)}
        expect(response).to redirect_to(user_session_path)
      end
    end
  end
  describe 'POST #create' do
    before do
      sign_in(my_user)
    end
    it 'assigns the new item to @item' do
      post :create, user_id: my_user.id, item: {name: Faker::Hipster.sentence(2)}
      expect(assigns(:item)).to eq Item.last
    end
    it 'returns http success' do
      post :create, user_id: my_user.id, item: {name: Faker::Hipster.sentence(2)}
      expect(response).to have_http_status(:success)
     end
    it 'increases number of items by 1' do
      expect{post :create, user_id: my_user.id, item: {name: Faker::Hipster.sentence(2)}}.to change(Item,:count).by(1)
    end
  end
end
