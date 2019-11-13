Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  namespace :posts do
    resources :searches, only: :index
  end
  resources :posts, except: :index
  resources :users, only: :show
  resources :categories, only: [:index, :show]
end
