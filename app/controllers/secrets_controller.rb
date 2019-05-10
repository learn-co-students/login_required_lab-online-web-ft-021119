class SecretsController < ApplicationController
  before_action :require_login
  def show
  end

  private
  # SecretsController
  #   get show
  #     should redirect to login if you're not logged in (FAILED - 1)
  def require_login
    unless session.include? :name
    redirect_to '/login'
    end
  end
end
