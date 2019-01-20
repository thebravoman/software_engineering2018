Rails.application.routes.draw do
  resources :people
  resources :attendances
  resources :organizations
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "events#index"
end
