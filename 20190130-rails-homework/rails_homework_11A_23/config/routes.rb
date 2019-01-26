Rails.application.routes.draw do
  post "/people/attendances/add", to: "attendances#create"
  get "/people/attendances/delete", to: "attendances#destroy"

  resources :attendances
  resources :people
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "events#index"
end
