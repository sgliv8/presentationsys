Rails.application.routes.draw do
  devise_for :users
  resources :grades

  resources :comments

  resources :roles

  resources :users

  root to: "comments#index"
end
