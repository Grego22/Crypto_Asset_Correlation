Rails.application.routes.draw do

  resources :comments
  get 'pages/home'

  get 'pages/weekly'

  get 'stats', to: 'pages#stats'

  get 'contact', to: 'pages#contact'

  devise_for :admins
  resources :posts

  root 'pages#home'
end

