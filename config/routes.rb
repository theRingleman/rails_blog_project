Rails.application.routes.draw do
  resources :comments
  resources :posts
  devise_for :users
  resources :users, only: [:show, :index]
  root 'static#home'
end
