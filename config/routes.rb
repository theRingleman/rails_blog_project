Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: [:index, :new, :create]
  end
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  resources :users, only: [:show, :index]
  resources :tags, only: [:show]
  root 'static#home'
  post 'sort', to: 'users#sort'
end
