Rails.application.routes.draw do
  # get 'users/show'
  # get 'games/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/login', to: 'auth#create'

  resources :users, only: [:create]
  get '/users', to: 'users#index'
 
  # get '/home', to: 'users#show'

end
