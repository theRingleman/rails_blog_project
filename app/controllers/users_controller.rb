class UsersController < ApplicationController
  def index
    @users = User.all
    authorize @users
  end

  def sort
    @users = User.by_letter(params[:q])
    render :index
  end

  def show
    @user = User.find(params[:id])
  end
end
