Rails.application.routes.draw do
  resources :customers
  resources :user
  resources :countries
  resources :products
  resources :categories
  get 'shopperly/index'
  root 'shopperly#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
