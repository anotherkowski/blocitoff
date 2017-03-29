require 'rails_helper'

RSpec.describe UsersController, type: :controller do
describe 'GET #index' do
    context 'when user is logged in' do
      with :user
      before do
        sign_in user
        get :index
      end
      it { is_expected.to respond_with :ok }
      it { is_expected.to render_with_layout :application }
      it { is_expected.to render_template :index }
    end
    context 'when user is logged out' do
      before do
        get :index
      end
      it { is_expected.to redirect_to new_session_path }
      it { is_expected.to set_session(:return_to).to(user_path) }
    end
  end
end
