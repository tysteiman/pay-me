Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'

  resources :loans, only: [:show] do
    member do
      resources :payments, except: [:edit, :update, :destroy]
    end
  end
end
