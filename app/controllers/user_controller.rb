class UserController < ApplicationController

  def create
    param! :uid, String, required: true
    @user = User.create(uid: param[:uid])
    render json: @user, status: 201
  end

  def destroy
    param! :id, String, required: true
    @user = User.find_by_uid(param[:id])
    @user.destroy
    head status: 204
  end

end

