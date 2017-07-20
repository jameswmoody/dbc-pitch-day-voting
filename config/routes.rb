Rails.application.routes.draw do
  root 'pages#welcome'
  get '/pitches', to: 'pitches#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/auth/github/callback", to: "sessions#create"
  delete "/logout", to: "sessions#delete"
end
