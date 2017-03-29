require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  let(:my_user) { create(:user) }
  let(:my_item) { create(:item, user: my_user) }

  # Shoulda matchers
  it { should route(:post, '/users/1/items').to(action: :create, user_id: 1) }

  describe 'POST #create' do
    it 'increases number of items by 1' do
      expect{post :create, user_id: my_user.id, item: {name: 'New item'}}.to change(Item,:count).by(1)
    end
    it 'assigns the new item to @item' do
      post :create, user: my_user, item: {name: Faker::Hipster.sentence(1)}
      expect(assigns(:item)).to eq Item.last
    end
    it "returns http success" do
       post :create, user: my_user, item: {name: 'New item'}
       expect(response).to have_http_status(:success)
     end
  end
end
