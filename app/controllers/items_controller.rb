class ItemsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @item = @user.items.new(item_params)
    @item.user = current_user
    @new_item = Item.new

    if @item.save!
      flash[:notice] = "Item was saved successfully"
      redirect_to @user
    else
      flash.now[:alert] = "There was an error saving your item"
      redirect_to @user
    end
  end

private
  def item_params
    params.require(:item).permit(:name)
  end
end
