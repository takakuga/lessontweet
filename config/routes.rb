Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  resources :tweets
  resources :comments, only: :create
  resources :users, only: :show
end
