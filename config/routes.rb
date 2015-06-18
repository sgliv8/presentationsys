Rails.application.routes.draw do

  get 'greeting/index'

  devise_for :users
  resources :grades

  resources :comments

  scope "/admin" do
    resources :users
    resources :roles
  end

  get 'welcome/search'
  get 'welcome/display'


  authenticated :user do
    root 'comments#index', as: "authenticated_root"
  end

  root 'greeting#index'
end
