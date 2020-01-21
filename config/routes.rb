Rails.application.routes.draw do
  resources :personalities, only: [:index, :show]
  resources :answers, only: [:new, :create]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
