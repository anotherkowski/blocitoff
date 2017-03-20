require 'rails_helper'

RSpec.describe UsersController, type: :controller do
context "when user is logged in" do

  it "should have a current_user" do
    sign_in
    # note the fact that you should remove the "validate_session" parameter if this was a scaffold-generated controller
    expect(subject.current_user).to_not eq(nil)
  end

  it "should get home" do
    # Note, rails 3.x scaffolding may add lines like get :index, {}, valid_session
    # the valid_session overrides the devise login. Remove the valid_session from your specs
    get 'pages/home'
    response.should be_success
  end
end

context "when user is not logged in" do
  it "redirects user to login page" do

  end
end

end
