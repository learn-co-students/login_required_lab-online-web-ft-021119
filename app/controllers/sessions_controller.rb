class SessionsController < ApplicationController
  def new
  end

  def home

  end


  def create
	  	if params[:name] == nil || params[:name] == ""
	  		redirect_to action: 'new'
	  	else
	  	
	  	session[:name] = params[:name]
	  	redirect_to action: 'home'
	  end
	end


	  def destroy
	  	session.delete :name
	  	redirect_to '/login'

	  end

  
end
