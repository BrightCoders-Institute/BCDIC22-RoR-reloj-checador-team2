Rails.application.routes.draw do
  root  "checks#index"
  get '/login_admin', to: "main#login_admin"
  resources :checks
  resources :stores
  resources :employees do
    post :change, on: :member
  end
end
