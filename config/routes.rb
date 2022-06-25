Rails.application.routes.draw do
  root 'users#new'
  get '/new', to: 'users#new'

  get '/thank', to: 'users#thank'
  resources :users
end
