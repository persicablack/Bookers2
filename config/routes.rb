Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update, :destroy]
  resources :books, only: [:index, :show, :create, :destroy, :edit, :update]
  root to: "home#top"
  get '/home/about', to: 'home#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
