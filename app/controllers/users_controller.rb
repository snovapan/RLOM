class UsersController < ApplicationController
  before_action :set_user, except: [:new, :create]

  def new
    if logged_in?
      logout
    end
    @user = User.new
  end

  def show
  end

  def edit
  end

  def destroy
  end

  def update
    if @current_user.update(edit_params)
      redirect_to @current_user
    else
      flash[:error] = "注册失败"
      render :new
    end
  end

  def create
    @user = User.new(signup_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:error] = "注册失败"
      render 'new'
    end
  end

  def signup_params
    params.require(:user).permit(:name, :password, :phone)
  end

  def edit_params
    params.require(:user).permit(:name, :password, :phone)
  end
end
