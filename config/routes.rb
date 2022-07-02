Rails.application.routes.draw do
  root 'users#home'
  get '/new', to: 'users#new'
  get '/users', to: 'users#new'
  get '/show', to: 'users#show'


  get '/thank', to: 'users#thank'
  resources :users
end
