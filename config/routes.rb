Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :items, only: [:create]
  end
  resources :items, only: [:delete]
  
  root 'pages#home'

  get 'pages/home'
  get 'pages/about'
end
