Rails.application.routes.draw do
  # root to: "index#home"
  resources :user
  resources :registry
  end
