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
	#get '/editbar', to: 'normal_user#editbar'
	get '/edit/:id', to: 'normal_user#editbar'
	post '/create2', to: 'normal_user#update'
	get '/normal_user/:id/show', to: 'normal_user#show'
	get '/normal_user/:id/edit', to: 'normal_user#editbar'
	resource :admins
	#resource :normalusers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
