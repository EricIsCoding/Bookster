Rails.application.routes.draw do
  devise_for :users
  resources :reviews, only: [:index, :create, :update, :destroy]
  resources :books do 
    resources :genres, only: [:new]
    resources :reviews, only: [:new, :edit]
  end
  resources :users do
    resources :books, only: [:index]
    resources :reviews, only: [:index]
  end
  resources :genres
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "books#index"

  get "*path" => redirect("/")
end
