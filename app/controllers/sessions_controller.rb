class SessionsController < ApplicationController
   def new
   end
   
   def create
      if !params[:name] || params[:name].empty?
         redirect_to login_path
      else
         session[:name] = params[:name]
      end
   end

   def destroy
      session.clear unless session[:name].nil?
      redirect_to root_path
   end

end
