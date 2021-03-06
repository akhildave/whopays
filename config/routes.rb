Whopays::Application.routes.draw do
  resources :pools
  resources :games
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  # You can have the root of your site routed with "root"
  root to: 'static_pages#home'

   # Setting up the gem 'omniauth-venmo' with path. Note: 'sessions' has been created in the controller in order to use this gem.
   get '/auth/:provider/callback', to: 'sessions#create' 
end
