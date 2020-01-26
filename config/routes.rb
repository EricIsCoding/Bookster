Rails.application.routes.draw do
  devise_for :users
  resources :reviews
  resources :genres
  resources :books
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "books#index"
end
