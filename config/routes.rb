Rails.application.routes.draw do
  resources :list_items
  resources :orders
  resources :customers
  resources :items
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
