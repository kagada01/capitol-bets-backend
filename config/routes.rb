Rails.application.routes.draw do
  # get 'users/show'
  # get 'games/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/login', to: 'auth#create' #needs username and password
  get '/home', to: 'users#show' #take in the token

  resources :users, only: [:index, :create]
  
  resources :games, only: [:index]
 
  resources :bets, only: [:index, :create, :update, :show]
 

end
