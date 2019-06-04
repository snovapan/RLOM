Rails.application.routes.draw do
  get    'item/index',     to: 'item#index',      as: 'items'
  get    'item/show',      to: 'item#show',       as: 'item'
  get    'item/new',       to: 'item#new',        as: 'new_item'
  get    'session/login',  to: 'sessions#new',    as: 'login'
  post   'session/login',  to: 'sessions#create', as: nil
  get    'session/logout', to: 'sessions#destroy',as: 'logout'
  get    'user/new',       to: 'users#new',       as: 'new_user'
  post   'user/new',       to: 'users#create',    as: nil
  get    'user/:id',       to: 'users#show',      as: 'user'
  put    'user/:id',       to: 'users#update',    as: nil
  patch  'user/:id',       to: 'users#update',    as: nil
  delete 'user/:id',       to: 'users#destroy',   as: nil
  get    'user/:id/edit',  to: 'users#edit',      as: 'edit_user'
end
