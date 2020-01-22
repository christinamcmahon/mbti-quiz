Rails.application.routes.draw do
  resources :personalities, only: [:index, :show, :create]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "personalities#index"

  get '/signup', to: "users#new", as: "signup"
  post '/signup', to: "users#create", as: "new_signup"
  
  get '/login', to: "auth#login", as: "login"
  post '/login', to: "auth#authenticate"

  get '/logout', to: "auth#logout"
end
