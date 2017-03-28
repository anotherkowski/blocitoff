require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  it { should route(:post, '/users/1/items').to(action: :create, user_id: 1) }
  let(:my_user) { create(:user) }
  let(:my_item) { build(:item, user: my_user) }

  describe 'POST #create' do
    before do
      post :create, user_id: my_user.id
    end
    it { is_expected.to respond_with :ok }
    it { should render_template('create') }

    it 'increases number of items by 1' do
      expect{post :create, user_id: my_user.id, item: {name: Faker::Hipster.words(4)}}.to change(Item,:count).by(1)
    end
    it 'assigns the new item to @item' do
      post :create, user_id: my_user.id, item: {name: Faker::Hipster.words(4)}
      expect(assigns(:item)).to eq Item.last
    end
    # it 'redirects to user#show page' do
    #   post :create, user_id: my_user.id, item: {name: Faker::Hipster.words(4)}
    #   expect(response).to redirect_to [my_user]
    # end
  end
end
