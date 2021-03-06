Rails.application.routes.draw do
  root 'sessions#new'

  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create]

  resources :articles, only: [:index, :create, :destroy]
  get '/favorite', to: 'articles#favorite'
end
