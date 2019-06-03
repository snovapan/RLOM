class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(login_params)
    if @user.authenticate
      redirect_to @user
    else
      flash[:error] = "登录失败"
      render :new
    end
  end

  private
  def login_params
    params.permit(:phone, :password)
  end
end
