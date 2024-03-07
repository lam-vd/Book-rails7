Rails.application.routes.draw do
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts
  resources :users, except: [:new] do
    collection do
      get "signup", to: "users#new"
    end
  end
  root 'microposts#index'
end