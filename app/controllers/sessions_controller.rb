class SessionsController < ApplicationController

    def new 
    end

    def create 
        if params[:name] && !params[:name].empty?
            session[:name] = params[:name]
            redirect_to '/secrets'
        else 
            redirect_to '/login'
        end
    end

    def destroy
        if session[:name].nil?
            redirect_to '/'
        else 
            session[:name] = nil 
            redirect_to '/'
        end
    end
end
