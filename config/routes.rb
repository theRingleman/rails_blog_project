Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: [:index, :new, :create, :edit, :update]
  end

  devise_for :users
  resources :users, only: [:show, :index]
  root 'static#home'
end
