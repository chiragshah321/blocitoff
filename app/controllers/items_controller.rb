class ItemsController < ApplicationController
  
  def create
    @user = current_user
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      flash[:notice] = "Item was saved."
      redirect_to current_user
    else
      flash[:error] = "There was an error saving the item. Please try again."
      render :new
    end
  end
  
  
  private 
  
  def item_params
    params.require(:item).permit(:name, :user)
  end
  
  
end
