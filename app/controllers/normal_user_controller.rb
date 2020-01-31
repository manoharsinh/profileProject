class NormalUserController < ApplicationController
	def new
	end
	def create
		#render json: {msg: normal_user_params}
		# @user = Normaluser.create('name' => params[:normal_user][:name],
  #                  'password' => params[:normal_user][:password],
  #                  'email' => params[:normal_user][:email],
		# 			'accounttype' => params[:normal_user][:accounttype],
  #                  'phonenumber' => params[:normal_user][:phonenumber],
  #                  'status' => params[:normal_user][:status])
  		@user=Normaluser.new(normal_user_params)
		if @user.save

			render json: {msg:@user}
		else
			render json:{msg:"could not insert data"}
		end

	end
	def edit
		#render json: {msg: params}
		@user=NormalUser.find(params[:id])
	end
	def update
		#render json: {msg: params}
		@user = NormalUser.find(params[:id])
 
    	if @user.update(article_params)
      		redirect_to @user
    	else
      		render 'edit'
    	end
	end
	private
	def normal_user_params
    		params.require(:normaluser).permit(:name, :password,:email,:accounttype,:phonenumber,:status)
  	end

end
