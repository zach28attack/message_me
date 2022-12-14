Rails.application.routes.draw do
  
  
  resources :sessions, only: [:new, :index]
  get "login", to: 'sessions#new'
  root 'chatroom#index'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  post 'message', to: 'messages#create'

  mount ActionCable.server => '/cable'

end
