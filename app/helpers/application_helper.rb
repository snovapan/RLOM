module ApplicationHelper
  def logged_in?
    if session[:user_id] != nil
      @current_user = User.find_by(id:session[:user_id])
      return true
    else
      return false
    end
  end
end
