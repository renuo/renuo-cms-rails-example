class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def cms_admin?
    # this is "very secure"
    # do your real authorization here
    params[:is_admin] == '1'
  end
  helper_method :cms_admin?

end
