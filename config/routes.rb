Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: [:index, :new, :create]
  end
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  resources :users, only: [:show, :index]
  root 'static#home'
  get 'sort', to: 'users#sort'
end
