Rails.application.routes.draw do
  resources :line_item
  resources :cart
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :customers
  resources :countries
  resources :products
  resources :categories
  get 'shopperly/index'
  root 'shopperly#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
