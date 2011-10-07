class ShelvesController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @shelf = @user.shelves.new()
  end

  def destroy
    @user = User.find(params[:user_id])
    @shelf = @user.shelves.find(params[:id])
    @shelf.destroy
    redirect_to user_path(@user)
  end

  def create
    @user = User.find(params[:user_id])
    @shelf = @user.shelves.create(params[:shelf])
    redirect_to user_path(@user)
    #@shelves = @user.shelves
  end

  def show
    @user = User.find(params[:user_id])
    @shelf = @user.shelves.find(params[:id])
  end
end
