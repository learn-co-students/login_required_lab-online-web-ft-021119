class SessionsController < ApplicationController
def create
	if !params[:name] || params[:name].empty?
		redirect_to login_path
	else
		session[:name] = params[:name]
		redirect_to controller: 'application', action: 'welcome'
	end
end
def destroy
	session.delete :name
	end


end
