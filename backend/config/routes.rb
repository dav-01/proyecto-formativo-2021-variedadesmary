Rails.application.routes.draw do

  root to: 'home#index'
  devise_for :users

  get 'devise/users'
  # get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end