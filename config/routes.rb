Rails.application.routes.draw do
  get 'games/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:create]
  post '/login', to: 'auth#create'
  get '/users/:id', to: 'users#show'

end
