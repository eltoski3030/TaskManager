Rails.application.routes.draw do
  root 'pages#pages'

  # Routes for authentication (login/logout)
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # Routes for users
  resources :users
  # Routes for tasks
  resources :tasks

  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
