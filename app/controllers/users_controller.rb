class UsersController < ApplicationController

  def create
    param! :uid, String, required: true
    @user = User.create(uid: params[:uid])
    render json: @user, status: 201
  end

  def destroy
    param! :id, String, required: true
    @user = User.find_by_uid(params[:id])
    @user.destroy
    head status: 204
  end

end

