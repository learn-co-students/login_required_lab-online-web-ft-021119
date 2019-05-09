class SecretsController < ApplicationController 
    before_action :require_login

    def show
        @secret = "My name is NOT Christopher"
    end

    def require_login
         redirect_to '/login' unless session.include? :name
    end
end