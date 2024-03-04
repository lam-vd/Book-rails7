Rails.application.routes.draw do
  resources :microposts
  resources :users, except: [:new] do
    collection do
      get "signup", to: "users#new"
    end
  end
  root 'microposts#index'
end