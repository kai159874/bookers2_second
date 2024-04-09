Rails.application.routes.draw do
  devise_for :users

  root "homes#top"
  get "home/about" => "homes#about"

  resources :users do
    resource :relationships, only: [:create, :destroy]
    get "followings" => "relationships#followings", as: "followings"
    get "followers" => "relationships#followers", as: "followers"
  end
  resources :books

  resources :chats, only: [:create, :show]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
