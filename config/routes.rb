Rails.application.routes.draw do
  get "carted_products/index"
  get "carted_products/create"
  get "carted_products/destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"

  # get "/one_product/:id", controller: "products", action: "one_product"
  # get "/all_products", controller: "products", action: "all_products"

  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"
  delete "/sessions" => "sessions#destroy"

  get "/orders" => "orders#index"
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"

  resources :carted_products, only: [:index, :create, :destroy]
  # get "/carted_products" => "carted_products#index"
  # post "/carted_products" => "carted_products#create"
  # delete "/carted_products/:id" => "carted_products#destroy"

  # post "/images" => "images#create"

end
