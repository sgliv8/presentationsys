Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users
  resources :grades

  resources :comments

  scope "/admin" do
    resources :users
    resources :roles
  end


  authenticated :user do
    root 'comments#index', as: "authenticated_root"
  end

  root 'welcome#index'
end
