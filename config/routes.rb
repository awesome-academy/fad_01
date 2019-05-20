Rails.application.routes.draw do
  root "static_pages#home"

  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  resources :account_activations, only: :edit
  resources :products, only: %i(index show) do
    resources :comments
  end
  resources :carts, only: [:index, :show, :update]
  resources :order_items, only: %i(create update destroy)
  resources :order_items do
    get "decrease", on: :member
    get "increase", on: :member
  end
  resources :checkouts, onlyl: :index
  resources :history_orders
  namespace :admin do
    resources :products
    resources :orders
    resources :users
    resources :statistics
    resources :sugests
  end
  resources :sugests
  resources :categories

  devise_for :users, controllers: {
    sessions: 'users/sessions', registrations: "users/registrations",
    confirmations: "users/confirmations", passwords: "users/passwords" }
  devise_scope :user do
    get "users/show", to: "users/registrations#show"
  end

  post "/search", to: "admin/users#index"
end
