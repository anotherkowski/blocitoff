class ItemsController < ApplicationController
  # def show
  #   @item = Item.find(params[:id])
  # end

  # def new
  #   @user = User.find(params[:user_id])
  #   @item = Item.new
  # end

  def create
    @item = Item.new
    @item.name = params[:item][:name]
    @user = User.find(params[:user_id])
    @item.user = @user

    if @item.save
      flash[:notice] = "Item was saved successfully"
      redirect_to [@user, @item]
    else
      flash.now[:alert] = "There was an error saving your item"
      render :new
    end
  end
end
