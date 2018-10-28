Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :tweets
  resources :hashtags, only: :show
  resources :users, only: :show do
    resources :follows, only: [:create, :destroy]
  end
  resources :favorites, only: [:create, :destroy]
  resources :searches, only: [:index]
  post '/searches', to: 'searches#search'
end
