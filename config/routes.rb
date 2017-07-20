Rails.application.routes.draw do
  root 'pitches#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users', to: 'users#index'
  get "/auth/github/callback", to: "users#create", as: :create


  resources :pitches, only: [:new, :index, :create]
end
