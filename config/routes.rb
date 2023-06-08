Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :challenges do
    resources :challenge_participations, only: [:create, :show, :edit, :update, :destroy]
  end
  resources :blog_posts
  resources :challenge_participations, only: [:index]
end
