Rails.application.routes.draw do
  resources :items
  resources :aricles
  root "home#index"
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"
  resources :employees
  get "employees/new", to: "employees#new", as:"new"
end