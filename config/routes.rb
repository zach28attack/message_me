Rails.application.routes.draw do
  
  resources :sessions, only: [:new, :index]
  get "signup", to: 'sessions#new'
  root 'chatroom#index'
end
