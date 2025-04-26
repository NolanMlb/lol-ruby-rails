Rails.application.routes.draw do
  get "rankings/index"
  get "home/index"
  # Define the root path to show the home page
  root "home#index"

  # Nested routes for teams and their players
  resources :teams do
    resources :players, only: [:new, :create]
  end

  # Routes for managing players independently
  resources :players, only: [:index, :show, :edit, :update, :destroy]
  
  # Routes for managing matches between teams
  resources :matches

  get "classement", to: "rankings#index"

  # Additional route to home page
  get "home", to: "home#index" 
end