class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # ApplicationController
  # current_user
  #   returns the name of the current user (FAILED - 1)
  #   returns nil if nobody is logged in (FAILED - 2)

  def current_user
    session[:name]
  end
end
