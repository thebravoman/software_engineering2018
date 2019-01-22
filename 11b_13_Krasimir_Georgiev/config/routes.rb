Rails.application.routes.draw do
  get 'landing_page/index'
  get 'login_system/login'
  get 'login_system/logout'
  get 'login_system/register'
  post 'login_system/create'
  post 'login_system/login_attempt'

  root to: redirect("landing_page/index")

  resources :documents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
