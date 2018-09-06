Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :tweets
  resources :hashtags, only: :show
  resources :users, only: :show
  test
end
