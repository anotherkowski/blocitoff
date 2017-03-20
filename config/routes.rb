Rails.application.routes.draw do
  devise_for :views
  root 'pages#home'

  get 'pages/home'

  get 'pages/about'

  devise_for :users

end
