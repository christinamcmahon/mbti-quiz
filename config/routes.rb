Rails.application.routes.draw do
  resources :personalities, only: [:index, :show, :create]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "personalities#index"

  get '/signup', to: "users#new", as: "signup"
  post '/signup', to: "users#create"
  
  get '/login', to: "auth#login", as: "login"
  post '/login', to: "auth#authenticate"

  get '/logout', to: "auth#logout"

  get '/quiz', to:"answers_users#new", as: "quiz"
  post '/quiz', to:"asnwers_users#create"
end
