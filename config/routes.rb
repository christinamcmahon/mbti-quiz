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

  get '/quiz_question_1', to:"answers_users#question1"
  post '/quiz_question_1', to:"answers_users#create_q1"

  get '/quiz_question_2', to:"answers_users#question2"
  post '/quiz_question_2', to:"answers_users#create_q2"

  get '/quiz_question_3', to:"answers_users#question3"
  post '/quiz_question_3', to:"answers_users#create_q3"

  get '/quiz_question_4', to:"answers_users#question4"
  post '/quiz_question_4', to:"answers_users#create_q4"

end
