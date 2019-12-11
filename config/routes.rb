Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  resources :users, only: [:edit, :update, :index]
  resources :groups, only: [:new, :create, :edit, :update]
  resources :comments, only: [:index, :create]
end