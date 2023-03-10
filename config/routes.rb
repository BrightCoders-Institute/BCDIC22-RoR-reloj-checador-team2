Rails.application.routes.draw do
  root 'checks#index'
  get '/login_admin', to: 'main#login_admin'
  resources :logins
  resources :checks
  resources :stores
  resources :employees do
    post :change, on: :member
  end
  resources :reports do
    get :employee, on: :member
  end
   devise_for :users 
  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end
end
