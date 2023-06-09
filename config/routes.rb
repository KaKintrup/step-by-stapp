Rails.application.routes.draw do
  get 'messages/show'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/challenges/:id/communnity_chat", to: "messages#show", as: "challenge_messages"
  post "/challenges/:id/communnity_chat", to: "messages#create"

  resources :challenges do
    resources :challenge_participations, only: [:create, :destroy]
  end
  resources :blog_posts
  resources :challenge_participations, only: [:index, :show] do
    resources :challenge_completions, only: :create
  end
  resources :challenge_completions, only: :destroy

end
