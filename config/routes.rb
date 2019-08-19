Rails.application.routes.draw do
  # get 'users/show'
  # get 'games/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/login', to: 'auth#create' #needs username and password
  get '/home', to: 'users#show' #take in the token

  resources :users, only: [:create]
  get '/users', to: 'users#index'

  resources :games, only: [:index]
  get '/games', to: 'games#index'
 
  resources :bets, only: [:index]
  get '/bets', to: 'bets#index'

  # get '/home', to: 'users#show'

end
