Rails.application.routes.draw do
	root 	'home#index'
	get 	'home' => 'home#index'
	get 	'home/new'
  resources :saved_titles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
