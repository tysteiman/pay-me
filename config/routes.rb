Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'

  resources :loans, only: [:show]
end
