class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_company, :logged_in?
  def current_company
    @current_company ||= Company.find(session[:company_id]) if session[:company_id]
  end
  def logged_in?
    !!current_company
  end
  def require_company
    if !logged_in?
      flash[:danger]  = "You must be logged in"
      redirect_to root_path
    end
  end
end
