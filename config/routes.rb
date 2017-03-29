Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [] do
    resources :items, only: [:create]
  end

  # resources :items, only: [:create]

  root 'pages#home'

  get 'pages/home'

  get 'pages/about'

end
