Rails.application.routes.draw do
  get 'eating_days/new'

  get 'eating_days/show'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  get 'users/update'

  devise_for :users, only: [:registration, :session]

  root "users#index"
  get "/about" => "static_pages#about"

  resources :users
  resources :eating_days
  resources :user_dates
end
