Rails.application.routes.draw do
  devise_for :users
  root to: 'comments#index'
  resources :users, only: [:index, :create, :destroy, :edit, :update]
  resources :comments, only: :index
end