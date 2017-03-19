Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

  devise_for :users

  root 'pages#home'


end
