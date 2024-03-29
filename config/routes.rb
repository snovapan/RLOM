Rails.application.routes.draw do
  get   'site/index',     to: 'site#index'
  get   'session/login',  to: 'sessions#new',    as: 'login'
  post  'session/login',  to: 'sessions#create', as: nil
  get   'session/logout', to: 'sessions#destroy',as: 'logout'

  resources :admins
  resources :users
  resources :orders
  resources :items
  resources :products do
    resources :comments
  end
  namespace :admin do
    resources :items
  end
  root   'site#index'
end
