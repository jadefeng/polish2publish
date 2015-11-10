Rails.application.routes.draw do

  resources :states
  resources :projects
  resources :genres
  resources :categories
  
  get 'pages/about'
  
  # devise_for :users
  devise_for :users, controllers: { registrations: "registrations" }
  resources :users

  # match '/contacts',     to: 'contacts#new',             via: 'get'
  # resources "contacts", only: [:new, :create]

  root :to => "pages#index"

end
