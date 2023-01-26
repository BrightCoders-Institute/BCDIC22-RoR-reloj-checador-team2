Rails.application.routes.draw do
  root  "main#checking_employee"
  get '/login_admin', to: "main#login_admin"
  resources :stores
  resources :employees
end
