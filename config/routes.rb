Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users

  resources :books
  resources :users, only: [:show, :edit, :update, :index]

  get '/home/about' => 'homes#about', as:'about'
end
