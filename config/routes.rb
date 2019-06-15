Rails.application.routes.draw do
  get    'site/index',     tp: 'site#index'
  get    'session/login',  to: 'sessions#new',    as: 'login'
  post   'session/login',  to: 'sessions#create', as: nil
  get    'session/logout', to: 'sessions#destroy',as: 'logout'
  get    'user/new',       to: 'users#new',       as: 'new_user'
  post   'user/new',       to: 'users#create',    as: nil
  get    'user/:id',       to: 'users#show',      as: 'user'
  get    'user/',          to: 'users#show',      as: nil
  put    'user/:id',       to: 'users#update',    as: nil
  patch  'user/:id',       to: 'users#update',    as: nil
  delete 'user/:id',       to: 'users#destroy',   as: nil
  get    'user/:id/edit',  to: 'users#edit',      as: 'edit_user'
  resources :items
  root   'site#index'
end
