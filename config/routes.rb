Rails.application.routes.draw do

  resources :pics
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :posts
  root to: 'pics#index'
end
