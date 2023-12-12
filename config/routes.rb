# frozen_string_literal: true

Rails.application.routes.draw do
  resources :list_items
  resources :orders
  resources :customers
  resources :items do
    collection do
      post :import
    end
  end
  resources :ship_label, only: :index
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "orders#index"
end
