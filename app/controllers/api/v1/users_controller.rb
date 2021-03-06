class Api::V1::UsersController < ApplicationController
  # before_action :set_user, only: [:show,:update,:destroy]

  def index
    @users = User.all
    render json: @users, status: 200
  end

  def create
    @user = User.create(user_params)
    render json: @user, status: 201
  end

  def update
    @user = User.find(params[:id])

    @user.update(user_params)
    if @user.save
      render json: @user
    else
      render json: {errors: @user.errors.full_messages}, status: 422
    end
  end

  def destroy
    userId = @user.id
    @user.destroy
    render json: {message: 'User deleted', userId: userId}
  end

  def show
    @user = User.find(params[:id])
    
    render json: @user, status: 200
  end

  private
  def user_params
    params.permit(:name)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
