Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :products
      resources :orders
      

      
      post '/login',    to: 'sessions#create'
      post '/logout',   to: 'sessions#destroy'
      get '/logged_in', to: 'sessions#is_logged_in?'

      resources :users do 
        resources :orders
      end
    end
  end
end