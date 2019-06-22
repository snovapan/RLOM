Rails.application.routes.draw do
  get   'site/index',     to: 'site#index'
  get   'session/login',  to: 'sessions#new',    as: 'login'
  post  'session/login',  to: 'sessions#create', as: nil
  get   'session/logout', to: 'sessions#destroy',as: 'logout'
  get   'users/cart',     to: 'users#cart',      as: 'users_cart'
  resources :users
  resources :items
  root   'site#index'
end
