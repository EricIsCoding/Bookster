Rails.application.routes.draw do
  devise_for :users
  resources :reviews
  resources :books
  resources :users do
    resources :books, only [:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "books#index"
end
