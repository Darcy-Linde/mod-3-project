class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users, status: :ok
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: :ok
  end

  def create
    @user = User.new(users_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(users_params)
    render json: @user, status: :updated
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: {}, status: :no_content
  end

  private

  def users_params
    params.permit(:name, :money)
  end

end
