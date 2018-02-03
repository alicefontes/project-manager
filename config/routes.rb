Rails.application.routes.draw do
  get 'manager/index'

  root 'manager#index'
end
