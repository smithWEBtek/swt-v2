class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all 
  end

  def show
  end

  def new
    @user = User.new
   end
  
  def edit
  end

  def update
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def destroy
    @user.delete
    redirect_to users_path
  end

  private
    def set_user
      @user = User.find_by_id(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :email, :password, :experience)
    end
end

