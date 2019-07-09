class ApplicationController < ActionController::Base
  private
  def logged_in?
    if session[:user_id] != nil
      @current_user = User.find_by(id:session[:user_id])
      return true
    else
      return false
    end
  end

  def logout
    reset_session
  end
  
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
