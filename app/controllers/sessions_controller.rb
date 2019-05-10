class SessionsController < ApplicationController
    def current_user
        session[:username]
    end
end