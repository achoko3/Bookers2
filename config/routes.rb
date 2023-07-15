Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users

  resources :books
  resources :users, only: [:show, :edit, :update]

  get '/homes/about' => 'homes#about', as:'about'
end
