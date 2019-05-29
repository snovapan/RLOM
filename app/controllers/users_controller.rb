class UsersController < ApplicationController
  before_action :set_user, except: [:new, :create]

  def index
  end

  def new
  end

  def show
  end

  def edit
  end

  def destroy
  end

  def update
  end

  def create
    @user = User.new(signup_params)
    if @user.save
      redirect_to user_path(@user)
    else
      flash[:error] = "注册失败"
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def signup_params
    params.require(:user).permit(:name, :password, :phone)
  end
end
