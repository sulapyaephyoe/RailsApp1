Rails.application.routes.draw do
  resources :users
  get "/user", to: "users#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "articles#index"
  resources :articles
  # get "/articles", to: "articles#index"

  
end   
