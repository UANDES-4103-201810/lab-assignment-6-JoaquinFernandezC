class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :is_user_logged_in?

  def index

  end

  def current_user
    @current_user ||=User.find(session[:user_id]) if session[:user_id]
	#complete this method
  end

  def is_user_logged_in?
    #complete this method
    !!current_user
    #logged_in = false
    #if logged_in then true else redirect_to root_path end
  end
end
