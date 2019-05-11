require 'pry'
class SecretsController < ApplicationController
    before_action :require_login
    # skip_before_action :require_login, only: [:show]

    def show
        # binding.pry
        
    end


    private
 
    def require_login
        redirect_to controller: "sessions", action: 'new' unless logged_in?
    end
end