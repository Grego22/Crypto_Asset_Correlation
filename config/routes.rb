Rails.application.routes.draw do

  resources :comments
  get 'pages/home'

  get 'pages/weekly'

  get 'pages/stats'

  get 'pages/contact'

  devise_for :admins
  resources :posts

  root 'pages#home'
end

