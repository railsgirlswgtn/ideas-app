module SessionsHelper
  def current_user
    User.find(session[:current_user_id]) rescue nil
  end

  def logged_in?
    session[:current_user_id].present?
  end
end
