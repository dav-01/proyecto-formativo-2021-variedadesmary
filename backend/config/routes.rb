Rails.application.routes.draw do
  # get 'pqrs/index'
  # get 'pqrs/new'
  # get 'pqrs/edit'
  # get 'pqrs/show'
  # get 'suppliers/index'
  # get 'suppliers/new'
  # get 'suppliers/edit'
  # get 'suppliers/show'
  # get 'products/index'
  # get 'products/new'
  # get 'products/edit'
  # get 'products/show'
  devise_for :users
  get 'home/index'
  get 'home/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  resources :products

  resources :suppliers

  resources :pqrs

end
