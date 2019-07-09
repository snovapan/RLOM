class SessionsController < ApplicationController
  def new
    @user ||= User.new
  end

  def create
    @user = User.new(login_params)
    registered_user = User.find_by(phone: login_params[:phone])
    if registered_user.nil?
      flash[:error] = "用户不存在"
      render :new, object: @user
      return
    end
    if registered_user.authenticate(login_params[:password])
      @user = registered_user
      session[:user_id] = @user.id
      flash[:success] = "登录成功"
      redirect_to @user
    else
      flash[:error] = "密码错误"
      render :new, object: @user
    end
  end

  def destroy
    logout
    redirect_to login_path
  end

  private
  def login_params
    params.require(:user).permit(:phone, :password)
  end
end
