Rails.application.routes.draw do
	post '/loginforuser', to: 'normal_user_session#login'
	post '/loginforadmin', to: 'admin_session#login'
	get '/welcome', to: 'admin#welcome'
	get '/loginformadmin', to: 'admin_session#loginform'
	get '/loginformuser', to: 'normal_user_session#loginform'
	post '/search', to: 'admin#search'
	get '/dday', to: 'admin#dday'
	get '/new', to: 'normal_user#new'
	get '/searchbar', to: 'admin#searchbar'
	delete '/logout', to: 'admin_session#logout'
	post '/create1', to: 'normal_user#create'
	post '/edit', to: 'normal_user#edit'
	resource :admins
	#resource :normal_users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
