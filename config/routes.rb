Rails.application.routes.draw do
  
  resources :sessions, only: [:new, :index]
  get "login", to: 'sessions#new'
  root 'chatroom#index'
end
