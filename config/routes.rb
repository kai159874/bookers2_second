Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end

  root "homes#top"
  get "home/about" => "homes#about"

  resources :users
  resources :books

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
