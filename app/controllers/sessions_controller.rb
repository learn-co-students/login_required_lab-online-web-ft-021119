class SessionsController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def new
    render :login
  end

  def create
    #binding.pry
    if params[:name].nil? || params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      @name = session[:name]
      redirect_to '/secrets/show'
    end
  end

  def destroy
    session.delete :name
  end

end
