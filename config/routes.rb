Rails.application.routes.draw do
  devise_for :users, only: [:registration, :session]

  root "static_pages#home"
  get "/about" => "static_pages#about"

  resources :users
end
