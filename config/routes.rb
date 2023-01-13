Rails.application.routes.draw do
  root  "main#cheking_employee"
  get '/cheking_employee',  to: "main#cheking_employee"
  get '/register_employee', to: "main#register_employee"
  get '/register_store', to: "main#register_store"

end
