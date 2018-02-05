Rails.application.routes.draw do
  get 'manager/index'

  resources :projects

  root 'projects#index'

  get '/list', to: 'projects#list', as: :list
  get '/new', to: 'projects#new', as: :new
  get '/login', to: 'projects#login', as: :login
  get '/register', to: 'projects#register', as: :register
  post '/added', to: 'projects#added', as: :added
end
