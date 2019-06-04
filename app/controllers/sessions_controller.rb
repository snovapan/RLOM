class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(phone: login_params[:phone])
    if @user.authenticate(login_params[:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:error] = "登录失败"
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to login_path
  end

  private
  def login_params
    params.require(:user).permit(:phone, :password)
  end
end
