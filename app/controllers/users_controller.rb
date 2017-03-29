class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @items = @user.items
  end

  def edit
  end

end
