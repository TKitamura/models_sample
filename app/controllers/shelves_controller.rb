class ShelvesController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @shelf = @user.shelves.new()
  end

  def destroy
  end

  def create
    @user = User.find(params[:user_id])
    @self = @user.shelves.create(params[:shelf])
    redirect_to user_path(@user)
    #@shelves = @user.shelves
  end


end
