Rails.application.routes.draw do

  resources :chatrooms
get 'chatrooms/show'
get 'new-chat', to: 'chatroom#create', as: 'new-chat'
  get 'sessions/new'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'profile', to: 'users#show', as: 'profile'

  resource :messages
  resources :users
  resources :sessions
  resources :answers
  resources :questions
  root 'home#index'
get '/about' => 'home#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
