class AdminController < ApplicationController
	def welcome

	end
	def searchbar
	end
	
	def search
    	@users = Normaluser.search(params[:normal_user][:term]).records
    	#render json: {msg: @users, msg2: params}
  	end
  	def dday
  	end
end
