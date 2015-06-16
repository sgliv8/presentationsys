Rails.application.routes.draw do
  devise_for :users
  resources :grades

  resources :comments

    scope "/admin" do
    resources :users
    resources :roles
  end

  root to: "comments#index"
end
