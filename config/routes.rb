Rails.application.routes.draw do
  devise_for :users

namespace :account do
  resources :groups
  resources :posts
end

  resources :groups do
    member do
      post :join
      post :quit
    end
    resources :posts
  end
  root "groups#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
