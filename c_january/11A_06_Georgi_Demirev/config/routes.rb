Rails.application.routes.draw do
  devise_for :users
  get "/", to: "home#index"
  # get '/documents/:id/(:email)/(:password)', to: 'documents#check'
  resources :documents
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
