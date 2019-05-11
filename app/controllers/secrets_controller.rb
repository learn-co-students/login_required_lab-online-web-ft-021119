require 'pry'
class SecretsController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:show]

    def show
        if (params[:name].nil?) 
            if current_user
                redirect_to '/show'
            else
                redirect_to '/login'
            end
            
        elsif (params[:name].empty?)
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to "/"
        end
        # binding.pry
    end


    private
 
    def require_login
        return head(:forbidden) unless session.include? :user_id
    end
end