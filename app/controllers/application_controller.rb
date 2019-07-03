class ApplicationController < ActionController::Base
  private
  def current_user
    @current_user ||= User.find_by(id:session[:user_id])
  end

  def set_user
    if session[:user_id].nil?
      redirect_to login_path
    else
      @user = current_user
    end
    
  end
end
