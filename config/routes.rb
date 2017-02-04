Rails.application.routes.draw do
  root 'users#index'
  resources :users
  resources :words
	post 'authenticate', to: 'authentication#authenticate'
end
