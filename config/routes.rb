Rails.application.routes.draw do
  root 'pages#welcome'

  get '/users', to: 'users#index'

  resources :pitches, only: [:new, :index, :create]

  get "/auth/github/callback", to: "sessions#create"
  delete "/logout", to: "sessions#delete"

  get '/votes', to: 'votes#index'
  post '/votes', to: 'votes#create'
end
