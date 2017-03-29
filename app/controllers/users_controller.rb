class UsersController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized
  
  def show
    @user = User.find(params[:id])
    @items = @user.items
  end

  def edit
  end

end
