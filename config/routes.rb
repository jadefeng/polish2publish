Rails.application.routes.draw do

  resources :states
  resources :projects
  resources :genres
  resources :categories
  get 'pages/about'
  resources :users
  devise_for :users

  root :to => "pages#index"

end
