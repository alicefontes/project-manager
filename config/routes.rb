Rails.application.routes.draw do
  get 'sessions/new'

  resources :bugs
  resources :users

  resources :projects

  root 'projects#initial'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
