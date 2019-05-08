class SecretsController < ApplicationController
   def show
      redirect_to controller: 'sessions', action: 'new' if (!current_user && session[:name].nil?)
   end
end