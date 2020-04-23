Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/", to: "sessions#index"
  post "/destroy", to: "sessions#destroy"
  get "/secret", to: "secrets#show"
end