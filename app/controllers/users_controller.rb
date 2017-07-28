class UsersController < ApplicationController
  
  def show
    if current_user.present?
      @user = current_user
      @item = Item.new
      @items = @user.items
    else
      redirect_to root_path 
    end  
  end
  
end
