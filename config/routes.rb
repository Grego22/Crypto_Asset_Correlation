Rails.application.routes.draw do

  get 'pages/home'

  get 'pages/weekly'

  get 'stats', to: 'pages#stats'

  get 'contact', to: 'pages#contact'

  devise_for :admins
  resources :posts do
    resources :comments
  end

  root 'pages#home'

  mount ActionCable.server => '/cable'
end

