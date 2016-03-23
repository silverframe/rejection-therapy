Rails.application.routes.draw do
  devise_for :users
  # get 'users/index'

  # root 'users#index'
  resources :posts, only: [:new, :show, :index]
  root "posts#index"

  resources :posts do
    member do
      put "like" => "posts#upvote"
      put "dislike" => "posts#downvote"
    end
  end

  resources :users, only: [:index, :show]
end
