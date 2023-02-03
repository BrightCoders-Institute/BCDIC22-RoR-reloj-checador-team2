Rails.application.routes.draw do
  root 'checks#index'
  get '/login_admin', to: 'main#login_admin'
  get '/menu', to: 'logins#menu'
  resources :logins
  resources :checks
  resources :stores
  resources :employees do
    post :change, on: :member
  end
  resources :reports do
    get :employee, on: :member
  end
end
