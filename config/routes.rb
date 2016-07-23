Rails.application.routes.draw do
  resources :comments
  resources :posts
  devise_for :users
  root 'static#home'
end
