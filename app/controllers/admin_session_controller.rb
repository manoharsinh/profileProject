class AdminSessionController < ApplicationController
	def loginform
	end
	def login
		#render json:{msg: params}
  		user = Admin.find_by(email: params[:admin_session][:email].downcase)
	  	if user!=nil
	  		if (user.authenticate(params[:admin_session][:password]) && user.status == "active")
	  			session[:user_id]=user.id
	  			redirect_to :controller => 'admin', :action => 'dday'
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
	  	redirect_to :controller => 'admin_session', :action => 'loginform' 
  	end

end
