class NormalUserSessionController < ApplicationController
	def loginform
	end
	def login

  		user = NormalUser.find_by(email: params[:session][:email].downcase)
	  	if user!=nil
	  		if user.authenticate(params[:session][:password])
	  			session[:user_id]=user.id
	  			redirect_to :controller => 'user', :action => 'editbar'
	  		else
	  			flash[:alert] = "Not Authorized to access this page"
	  		end

	  	else
	  		flash[:alert] = "Not Authorized to access this page"
	  	end
  	end
  	def logout
	  	session.delete(:user_id)
	  	@current_user=nil
	  	redirect_to :controller => 'normal_user_session', :action => 'new' 
  	end

end
