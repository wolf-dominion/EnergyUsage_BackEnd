Rails.application.routes.draw do
  resources :favoritemaps
  resources :users, only: [:index, :show, :create] do
    resources :favoritemaps
  end

  post "login", to: "authenticate#login"
end