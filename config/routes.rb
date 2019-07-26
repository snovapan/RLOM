Rails.application.routes.draw do
  get   'site/index',     to: 'site#index'
  get   'session/login',  to: 'sessions#new',    as: 'login'
  post  'session/login',  to: 'sessions#create', as: nil
  get   'session/logout', to: 'sessions#destroy',as: 'logout'
  get   'users/cart',     to: 'users#cart',      as: 'users_cart'

  resources :admins
  resources :users
  resources :orders
  resources :carts
  resources :items do
    resources :comments
  end

  namespace :admin do
    resources :items
  end
  root   'site#index'
end
