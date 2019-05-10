class SecretsController < ApplicationController
     before_action :logged_in
     skip_before_action :logged_in, only: [:show]

 
  	    def show
		    if current_user
		    	render :show
		    else
		    	redirect_to '/new'
		    end
		end


		def logged_in
			return head(:forbidden) unless session.include? :name

		end
end
