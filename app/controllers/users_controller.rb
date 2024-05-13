class UsersController < ApplicationController
  before_action :set_user, only: %i[show update destroy]

  # GET /users
  def index
    render json: User.all, status: :ok
  end

  # GET /users/1
  def show
    render json: @user, status: :ok
  end

  # POST /users
  def create
    @user = User.new(user_params)

    render json: @user, status: :created, location: @user and return if @user.save

    render json: @user.errors, status: :unprocessable_entity
  end

  # PATCH /users/1
  def update
    render json: @user, status: :ok and return if @user.update(user_params)

    render json: @user.errors, status: :unprocessable_entity
  end

  # DELETE /users/1
  def destroy
    @user.destroy!
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
