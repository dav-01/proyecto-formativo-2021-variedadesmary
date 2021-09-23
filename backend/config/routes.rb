Rails.application.routes.draw do

  get 'pqr/index'
  get 'vendors/index'
  # get '/products', to: 'products#products'
  root to: 'home#index'
  devise_for :users

  get 'devise/users'

  # post '/products', to: 'products#create'

  resources :products

  resources :suppliers

  resources :pqr
  # get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
