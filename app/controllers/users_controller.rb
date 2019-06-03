class UsersController < ApplicationController
  before_action :set_user, except: [:new, :create]

  def new
    @user = User.new
  end

  def show
  end

  def edit
  end

  def destroy
  end

  def update
    if @user.update(edit_params)
      redirect_to @user
    else
      flash[:error] = "注册失败"
      render 'edit'
    end
  end

  def create
    @user = User.new(signup_params)
    if @user.save
      redirect_to @user
    else
      flash[:error] = "注册失败"
      render 'new'
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def signup_params
    params.require(:user).permit(:name, :password, :phone)
  end

  def edit_params
    params.require(:user).permit(:name, :password, :phone)
  end
end
