class SessionsController < ApplicationController
  before_action :require_login, only: [:show]

  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to homepage_path 
    else
      redirect_to login_path
    end
  end

  def show
  end

  def destroy
    if !session[:name].nil?
      session[:name] = nil
    end
    redirect_to login_path
  end

  private

  def require_login
    redirect_to login_path unless session.include? :name
  end
end
