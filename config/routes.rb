Rails.application.routes.draw do
  resources :bugs
  resources :users

  resources :projects

  root 'projects#initial'
end
