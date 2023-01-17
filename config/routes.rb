Rails.application.routes.draw do
  root  "main#checking_employee"
  get '/checking_employee',  to: "main#checking_employee"
  get '/register_employee', to: "main#register_employee"
  get '/register_store', to: "main#register_store"
  get '/login_admin', to: "main#login_admin"

end