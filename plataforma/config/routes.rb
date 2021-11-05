Rails.application.routes.draw do
  
  devise_for :users
  # get 'suppliers/index'
  # get 'suppliers/new'
  # get 'suppliers/show'
  # get 'suppliers/edit'
  # get 'products/index'
  # get 'products/new'
  # get 'products/show'
  # get 'products/edit'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  resources :products
  resources :suppliers
end
