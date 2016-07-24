class UsersController < ApplicationController
  def index
    @users = User.all
    authorize @users
  end

  def sort
    @users = User.sort_by(params[:q])
  end

  def show
    @user = User.find(params[:id])
  end
end
