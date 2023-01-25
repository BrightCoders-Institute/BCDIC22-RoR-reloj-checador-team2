Rails.application.routes.draw do
  root  "main#checking_employee"
  get '/checking_employee',  to: "main#checking_employee"
  get '/login_admin', to: "main#login_admin"
  get '/register_employee', to: "employee#register_employee"
  get '/employees', to: "employee#index"

  resources :stores
end
