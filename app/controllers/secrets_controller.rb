class SecretsController < ApplicationController
    
    def show
        if !current_user && session[:name].nil?
            redirect_to controller: 'sessions', action: 'new'
        else
            current_user
        end
    end

    private

        def require_login
            return head(:forbidden) unless session.include? :name
        end
end
