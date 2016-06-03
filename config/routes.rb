Rails.application.routes.draw do

  devise_for :users, only: [:registration, :session]

  root "users#index"
  get "/about" => "static_pages#about"

  resources :users
  resources :eating_days
  resources :user_dates
  resources :moneys
end
