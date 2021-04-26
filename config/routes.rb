Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: "home#index"
	namespace :api do 
		namespace :v1 do 
			resources :meetings
		end
	end

	post "/slack/index", to: "slack/commands#index"
	post "/slack/create", to: "slack/commands#create"
	post "/slack/post", to: "slack/commands#post"
	post "/slack/event", to: "slack/commands#event"

	resources :meetings do 	
		resources :discussions, module: :meetings
		resources :action_items, module: :meetings
	end
end
