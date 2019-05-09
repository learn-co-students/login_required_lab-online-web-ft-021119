class SecretsController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :logged_in?

  def show
    if logged_in?
    else
      redirect_to '/sessions/new'
    end
  end



  private

  def logged_in?
    session.include?(:name) ? true : false
  end
end
